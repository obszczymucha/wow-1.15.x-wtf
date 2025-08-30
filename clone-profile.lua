#!/usr/bin/env lua

local function serialize_value(value, indent)
  indent = indent or 0
  local spaces = string.rep("\t", indent)

  if type(value) == "nil" then
    return "nil"
  elseif type(value) == "boolean" then
    return tostring(value)
  elseif type(value) == "number" then
    return string.format("%.17g", value)
  elseif type(value) == "string" then
    local escaped = value:gsub('\\', '\\\\'):gsub('"', '\\"'):gsub('\n', '\\n'):gsub('\r', '\\r'):gsub('\t', '\\t')
    escaped = escaped:gsub('[\000-\031\127-\255]', function(c)
      return string.format('\\%03d', string.byte(c))
    end)
    return string.format('"%s"', escaped)
  elseif type(value) == "table" then
    local result = "{\n"
    for k, v in pairs(value) do
      local key_str
      if type(k) == "string" then
        local escaped_key = k:gsub('\\', '\\\\'):gsub('"', '\\"'):gsub('\n', '\\n'):gsub('\r', '\\r'):gsub('\t', '\\t')
        escaped_key = escaped_key:gsub('[\000-\031\127-\255]', function(c)
          return string.format('\\%03d', string.byte(c))
        end)
        key_str = string.format('["%s"]', escaped_key)
      elseif type(k) == "number" then
        key_str = string.format("[%s]", k)
      else
        key_str = string.format("[%s]", serialize_value(k, 0))
      end
      result = result .. spaces .. "\t" .. key_str .. " = " .. serialize_value(v, indent + 1) .. ",\n"
    end
    result = result .. spaces .. "}"
    return result
  else
    return '"' .. tostring(value) .. '"'
  end
end

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

local function clone_character_in_table(t, realm, base_char, new_char)
  if type(t) ~= "table" then
    return t
  end

  local result = {}

  -- First pass: copy all entries, recursively processing tables
  for k, v in pairs(t) do
    local processed_value = v

    if type(v) == "table" then
      processed_value = clone_character_in_table(v, realm, base_char, new_char)
    end

    result[k] = processed_value
  end

  -- Second pass: create clones for base character entries
  for k, v in pairs(t) do
    if type(k) == "string" and k:find(base_char .. " %- " .. realm) then
      local clone_key = k:gsub(base_char .. " %- " .. realm, new_char .. " - " .. realm)
      local clone_value = v

      -- Process clone value
      if type(v) == "string" then
        if v:find(base_char) then
          clone_value = v:gsub(base_char, new_char)
        end
      elseif type(v) == "table" then
        clone_value = clone_character_in_table(v, realm, base_char, new_char)
      end

      -- Replace if key exists, or add new entry
      result[clone_key] = clone_value
    end
  end

  return result
end

local function process_lua_file(filepath, realm, base_char, new_char)
  local env = load_lua_file(filepath)

  local modified = false
  for var_name, var_value in pairs(env) do
    if var_name ~= "_G" and var_name ~= "_ENV" and not string.match(var_name, "^_") and var_name ~= "arg" then
      local new_value = clone_character_in_table(var_value, realm, base_char, new_char)
      env[var_name] = new_value
      modified = true
    end
  end

  if modified then
    local backup_file = filepath .. ".bak"
    os.rename(filepath, backup_file)

    local out = io.open(filepath, "w")
    if not out then
      os.rename(backup_file, filepath)
      error("Cannot write to " .. filepath)
    end

    out:write("\n")
    for var_name, var_value in pairs(env) do
      if var_name ~= "_G" and var_name ~= "_ENV" and not string.match(var_name, "^_") and var_name ~= "arg" then
        out:write(var_name .. " = " .. serialize_value(var_value) .. "\n")
      end
    end

    out:close()
    print("Updated: " .. filepath)
  end

  return true
end

local function clone_profiles(saved_vars_path, realm, base_char, new_char)
  local handle = io.popen("find '" .. saved_vars_path .. "' -name '*.lua' -type f")
  if not handle then
    error("Cannot list lua files in " .. saved_vars_path)
  end

  for filepath in handle:lines() do
    process_lua_file(filepath, realm, base_char, new_char)
  end

  handle:close()
end

if #arg < 4 then
  print("Usage: lua clone-profile.lua <saved_vars_path> <realm> <base_char> <new_char>")
  print("Example: lua clone-profile.lua 'Account/808531110#1/SavedVariables' 'Spineshatter' 'Obszczymucha' 'Tachikoma'")
  os.exit(1)
end

local saved_vars_path = arg[1]
local realm = arg[2]
local base_char = arg[3]
local new_char = arg[4]

print("Cloning character profiles:")
print("  From: " .. base_char .. " - " .. realm)
print("  To: " .. new_char .. " - " .. realm)
print("  Path: " .. saved_vars_path)

clone_profiles(saved_vars_path, realm, base_char, new_char)
