#!/usr/bin/env lua

local function load_lua_file(filepath)
    local file = io.open(filepath, "r")
    if not file then
        error("Cannot open file: " .. filepath)
    end
    
    local content = file:read("*all")
    file:close()
    
    local env = {}
    local chunk, err = load(content, filepath, "t", env)
    if not chunk then
        error("Cannot parse lua file " .. filepath .. ": " .. err)
    end
    
    chunk()
    return env
end

local function deep_compare(t1, t2, path)
    path = path or ""
    
    if type(t1) ~= type(t2) then
        return false, string.format("Type mismatch at %s: %s vs %s", path, type(t1), type(t2))
    end
    
    if type(t1) ~= "table" then
        if t1 ~= t2 then
            return false, string.format("Value mismatch at %s: %s vs %s", path, tostring(t1), tostring(t2))
        end
        return true
    end
    
    local keys1, keys2 = {}, {}
    for k in pairs(t1) do table.insert(keys1, k) end
    for k in pairs(t2) do table.insert(keys2, k) end
    
    if #keys1 ~= #keys2 then
        return false, string.format("Different number of keys at %s: %d vs %d", path, #keys1, #keys2)
    end
    
    for _, k in ipairs(keys1) do
        if t2[k] == nil then
            return false, string.format("Key missing in second table at %s: %s", path, tostring(k))
        end
        
        local new_path = path == "" and tostring(k) or path .. "." .. tostring(k)
        local ok, err = deep_compare(t1[k], t2[k], new_path)
        if not ok then
            return false, err
        end
    end
    
    return true
end

local function validate_files(original_file, serialized_file)
    print("Validating " .. original_file .. " vs " .. serialized_file)
    
    local original_env = load_lua_file(original_file)
    local serialized_env = load_lua_file(serialized_file)
    
    local original_vars, serialized_vars = {}, {}
    
    for var_name, var_value in pairs(original_env) do
        if not string.match(var_name, "^_") and var_name ~= "arg" then
            original_vars[var_name] = var_value
        end
    end
    
    for var_name, var_value in pairs(serialized_env) do
        if not string.match(var_name, "^_") and var_name ~= "arg" then
            serialized_vars[var_name] = var_value
        end
    end
    
    local ok, err = deep_compare(original_vars, serialized_vars)
    if ok then
        print("✓ Validation passed: files are equivalent")
        return true
    else
        print("✗ Validation failed: " .. err)
        return false
    end
end

if #arg < 2 then
    print("Usage: lua validate.lua <original.lua> <serialized.lua>")
    os.exit(1)
end

local success = validate_files(arg[1], arg[2])
os.exit(success and 0 or 1)