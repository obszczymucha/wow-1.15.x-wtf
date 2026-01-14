
WeakAurasSaved = {
["dynamicIconCache"] = {
},
["editor_tab_spaces"] = 4,
["editor_font_size"] = 12,
["features"] = {
},
["displays"] = {
["Warrior"] = {
["backdropColor"] = {
1,
1,
1,
0.5,
},
["controlledChildren"] = {
"Interrupted",
},
["borderBackdrop"] = "Blizzard Tooltip",
["scale"] = 1,
["yOffset"] = 0,
["border"] = false,
["borderEdge"] = "Square Full White",
["regionType"] = "group",
["borderSize"] = 2,
["animation"] = {
["start"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["borderColor"] = {
0,
0,
0,
1,
},
["xOffset"] = 0,
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["debuffType"] = "HELPFUL",
["type"] = "aura2",
["spellIds"] = {
},
["subeventSuffix"] = "_CAST_START",
["unit"] = "player",
["subeventPrefix"] = "SPELL",
["event"] = "Health",
["names"] = {
},
},
["untrigger"] = {
},
},
},
["anchorPoint"] = "CENTER",
["internalVersion"] = 84,
["authorOptions"] = {
},
["selfPoint"] = "CENTER",
["id"] = "Warrior",
["borderOffset"] = 4,
["frameStrata"] = 1,
["anchorFrameType"] = "SCREEN",
["config"] = {
},
["borderInset"] = 1,
["information"] = {
},
["subRegions"] = {
},
["alpha"] = 1,
["conditions"] = {
},
["load"] = {
["talent"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["uid"] = "mvzvhJ44TJO",
},
["Main Notifications"] = {
["grow"] = "HORIZONTAL",
["controlledChildren"] = {
"Battle Shout Missing",
"Battle Shout running out",
},
["borderBackdrop"] = "Blizzard Tooltip",
["xOffset"] = 0,
["preferToUpdate"] = false,
["yOffset"] = -150,
["gridType"] = "RD",
["borderColor"] = {
0,
0,
0,
1,
},
["rowSpace"] = 1,
["actions"] = {
["start"] = {
},
["init"] = {
},
["finish"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["debuffType"] = "HELPFUL",
["type"] = "aura2",
["spellIds"] = {
},
["subeventSuffix"] = "_CAST_START",
["subeventPrefix"] = "SPELL",
["unit"] = "player",
["event"] = "Health",
["names"] = {
},
},
["untrigger"] = {
},
},
},
["columnSpace"] = 1,
["radius"] = 200,
["animation"] = {
["start"] = {
["duration_type"] = "seconds",
["type"] = "none",
["easeStrength"] = 3,
["easeType"] = "none",
},
["main"] = {
["duration_type"] = "seconds",
["type"] = "none",
["easeStrength"] = 3,
["easeType"] = "none",
},
["finish"] = {
["duration_type"] = "seconds",
["type"] = "none",
["easeStrength"] = 3,
["easeType"] = "none",
},
},
["align"] = "CENTER",
["alpha"] = 1,
["stagger"] = 0,
["regionType"] = "dynamicgroup",
["sortHybridTable"] = {
["MOTW running out"] = false,
["MOTW missing"] = false,
},
["subRegions"] = {
},
["useLimit"] = false,
["arcLength"] = 360,
["load"] = {
["size"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["talent"] = {
["multi"] = {
},
},
},
["gridWidth"] = 5,
["backdropColor"] = {
1,
1,
1,
0.5,
},
["space"] = 2,
["animate"] = false,
["borderEdge"] = "Square Full White",
["scale"] = 1,
["centerType"] = "LR",
["border"] = false,
["anchorFrameFrame"] = "SUFUnittarget",
["stepAngle"] = 15,
["borderSize"] = 2,
["limit"] = 5,
["config"] = {
},
["borderInset"] = 1,
["constantFactor"] = "RADIUS",
["selfPoint"] = "CENTER",
["borderOffset"] = 4,
["rotation"] = 0,
["tocversion"] = 11508,
["id"] = "Main Notifications",
["fullCircle"] = true,
["frameStrata"] = 1,
["anchorFrameType"] = "SELECTFRAME",
["sort"] = "none",
["uid"] = "pb8jb71psxd",
["authorOptions"] = {
},
["anchorPoint"] = "BOTTOM",
["conditions"] = {
},
["information"] = {
},
["internalVersion"] = 84,
},
["Find Minerals"] = {
["iconSource"] = -1,
["parent"] = "Tracking",
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = 0,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["cooldownEdge"] = false,
["icon"] = true,
["triggers"] = {
{
["trigger"] = {
["type"] = "custom",
["subeventSuffix"] = "_CAST_START",
["event"] = "Chat Message",
["subeventPrefix"] = "SPELL",
["custom_hide"] = "custom",
["events"] = "MINIMAP_UPDATE_TRACKING,PLAYER_ENTERING_WORLD",
["custom"] = "function()\n  return GetTrackingTexture() == 136025\nend",
["spellIds"] = {
},
["custom_type"] = "event",
["names"] = {
},
["unit"] = "player",
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
["custom"] = "function()\n  return GetTrackingTexture() ~= 136025\nend",
},
},
["activeTriggerMode"] = -10,
},
["internalVersion"] = 84,
["progressSource"] = {
-1,
"",
},
["selfPoint"] = "CENTER",
["desaturate"] = false,
["subRegions"] = {
{
["type"] = "subbackground",
},
{
["text_shadowXOffset"] = 0,
["text_text_format_s_format"] = "none",
["text_text"] = "%s",
["text_shadowColor"] = {
0,
0,
0,
1,
},
["text_selfPoint"] = "AUTO",
["text_automaticWidth"] = "Auto",
["text_fixedWidth"] = 64,
["anchorYOffset"] = 0,
["text_justify"] = "CENTER",
["rotateText"] = "NONE",
["type"] = "subtext",
["text_color"] = {
1,
1,
1,
1,
},
["text_font"] = "Friz Quadrata TT",
["text_shadowYOffset"] = 0,
["text_wordWrap"] = "WordWrap",
["text_visible"] = true,
["anchor_point"] = "INNER_BOTTOMRIGHT",
["text_fontSize"] = 12,
["anchorXOffset"] = 0,
["text_fontType"] = "OUTLINE",
},
{
["glowFrequency"] = 0.25,
["type"] = "subglow",
["useGlowColor"] = false,
["glowType"] = "buttonOverlay",
["glowLength"] = 10,
["glowYOffset"] = 0,
["glowColor"] = {
1,
1,
1,
1,
},
["glowDuration"] = 1,
["glowXOffset"] = 0,
["glow"] = false,
["glowScale"] = 1,
["glowThickness"] = 1,
["glowLines"] = 8,
["glowBorder"] = false,
},
},
["height"] = 24,
["load"] = {
["size"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["talent"] = {
["multi"] = {
},
},
},
["useAdjustededMax"] = false,
["config"] = {
},
["keepAspectRatio"] = false,
["preferToUpdate"] = false,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["color"] = {
1,
1,
1,
1,
},
["cooldown"] = true,
["displayIcon"] = "136025",
["authorOptions"] = {
},
["xOffset"] = 0,
["anchorFrameType"] = "SCREEN",
["cooldownTextDisabled"] = false,
["useCooldownModRate"] = true,
["tocversion"] = 11508,
["id"] = "Find Minerals",
["frameStrata"] = 1,
["alpha"] = 1,
["width"] = 24,
["zoom"] = 0,
["uid"] = "7ff20rHeNhN",
["inverse"] = false,
["animation"] = {
["start"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["conditions"] = {
},
["information"] = {
},
["actions"] = {
["start"] = {
},
["init"] = {
},
["finish"] = {
},
},
},
["Find Herbs"] = {
["iconSource"] = -1,
["parent"] = "Tracking",
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = 0,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["cooldownEdge"] = false,
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["type"] = "custom",
["subeventSuffix"] = "_CAST_START",
["event"] = "Chat Message",
["subeventPrefix"] = "SPELL",
["debuffType"] = "HELPFUL",
["unit"] = "player",
["custom"] = "function()\n  return GetTrackingTexture() == 133939\nend",
["names"] = {
},
["custom_type"] = "event",
["events"] = "MINIMAP_UPDATE_TRACKING,PLAYER_ENTERING_WORLD",
["spellIds"] = {
},
["custom_hide"] = "custom",
},
["untrigger"] = {
["custom"] = "function()\n  return GetTrackingTexture() ~= 133939\nend",
},
},
["activeTriggerMode"] = -10,
},
["internalVersion"] = 84,
["keepAspectRatio"] = false,
["selfPoint"] = "CENTER",
["desaturate"] = false,
["subRegions"] = {
{
["type"] = "subbackground",
},
{
["text_shadowXOffset"] = 0,
["text_text_format_s_format"] = "none",
["text_text"] = "%s",
["text_shadowColor"] = {
0,
0,
0,
1,
},
["text_selfPoint"] = "AUTO",
["text_automaticWidth"] = "Auto",
["text_fixedWidth"] = 64,
["anchorYOffset"] = 0,
["text_justify"] = "CENTER",
["rotateText"] = "NONE",
["type"] = "subtext",
["text_color"] = {
1,
1,
1,
1,
},
["text_font"] = "Friz Quadrata TT",
["text_shadowYOffset"] = 0,
["text_wordWrap"] = "WordWrap",
["text_visible"] = true,
["anchor_point"] = "INNER_BOTTOMRIGHT",
["text_fontSize"] = 12,
["anchorXOffset"] = 0,
["text_fontType"] = "OUTLINE",
},
{
["glowFrequency"] = 0.25,
["type"] = "subglow",
["glowDuration"] = 1,
["glowType"] = "buttonOverlay",
["glowLength"] = 10,
["glowYOffset"] = 0,
["glowColor"] = {
1,
1,
1,
1,
},
["useGlowColor"] = false,
["glowXOffset"] = 0,
["glowThickness"] = 1,
["glowScale"] = 1,
["glow"] = false,
["glowLines"] = 8,
["glowBorder"] = false,
},
},
["height"] = 24,
["load"] = {
["talent"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["useAdjustededMax"] = false,
["uid"] = "d3(b3qoX5JH",
["icon"] = true,
["progressSource"] = {
-1,
"",
},
["useAdjustededMin"] = false,
["regionType"] = "icon",
["xOffset"] = 0,
["information"] = {
},
["conditions"] = {
},
["authorOptions"] = {
},
["animation"] = {
["start"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["anchorFrameType"] = "SCREEN",
["cooldownTextDisabled"] = false,
["frameStrata"] = 1,
["tocversion"] = 11508,
["id"] = "Find Herbs",
["useCooldownModRate"] = true,
["alpha"] = 1,
["width"] = 24,
["zoom"] = 0,
["config"] = {
},
["inverse"] = false,
["color"] = {
1,
1,
1,
1,
},
["displayIcon"] = 133939,
["cooldown"] = true,
["preferToUpdate"] = false,
},
["AlchemyKitTracker_Icon"] = {
["iconSource"] = 1,
["parent"] = "Alchemy Kit Tracker",
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = 0,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["cooldownEdge"] = false,
["icon"] = true,
["triggers"] = {
{
["trigger"] = {
["type"] = "custom",
["debuffType"] = "HELPFUL",
["subeventSuffix"] = "_CAST_START",
["custom_type"] = "stateupdate",
["subeventPrefix"] = "SPELL",
["event"] = "Character Stats",
["unit"] = "player",
["spellIds"] = {
},
["events"] = "BAG_UPDATE",
["custom"] = "function(allstates, event)\n    wipe(allstates)\n    \n    local function get_resources()\n        local result = {}\n        \n        for _, p in ipairs(aura_env.config.resources) do\n            local name, link, _, _, _, _, _, _, _, icon = GetItemInfo(p.item_id)\n            table.insert(result, {\n                    item_id = p.item_id,\n                    name = name,\n                    link = link,\n                    icon = icon,\n                    target_count = p.target_count,\n                    count = 0\n            })\n        end\n        \n        return result\n    end\n    \n    local function get_resource(resources, item_id)\n        for _, r in ipairs(resources) do\n            if r.item_id == item_id then return r end\n        end\n    end\n    \n    local function get_items()\n        local result = get_resources()\n        --local icons = { [\"Herbalism\"] = 133939, [\"Mining\"] = 136025 }\n        \n        for bag = 0, NUM_BAG_SLOTS do\n            for slot = 1, C_Container.GetContainerNumSlots(bag) do\n                local info = C_Container.GetContainerItemInfo(bag, slot)\n                \n                if info then\n                    local item_id = info.itemID\n                    local resource = get_resource(result, item_id)\n                    \n                    if resource then\n                        resource.count = resource.count + info.stackCount\n                    end \n                end\n                \n            end\n        end\n        \n        return result\n    end\n    \n    local i = 1\n    \n    for _, item in ipairs(get_items()) do\n        local state = {}\n        state.show = true\n        state.changed = true\n        state.icon = item.icon\n        state.resource = item\n        state.progressType = \"static\"\n        state.duration = 0\n        allstates[i] = state\n        i = i + 1\n    end\n    \n    return true\nend",
["customIcon"] = "function()\n  return 133939\nend",
["check"] = "event",
["use_unit"] = true,
["names"] = {
},
["custom_hide"] = "timed",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["internalVersion"] = 84,
["keepAspectRatio"] = false,
["animation"] = {
["start"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["desaturate"] = false,
["subRegions"] = {
{
["type"] = "subbackground",
},
{
["text_shadowXOffset"] = 0,
["text_text_format_s_format"] = "none",
["text_text"] = "%c",
["text_shadowColor"] = {
0,
0,
0,
1,
},
["text_selfPoint"] = "AUTO",
["text_automaticWidth"] = "Auto",
["text_fixedWidth"] = 64,
["anchorYOffset"] = 0,
["text_justify"] = "CENTER",
["rotateText"] = "NONE",
["type"] = "subtext",
["text_anchorXOffset"] = 0,
["text_color"] = {
1,
1,
1,
1,
},
["text_font"] = "Friz Quadrata TT",
["text_shadowYOffset"] = 0,
["text_wordWrap"] = "WordWrap",
["text_visible"] = true,
["text_text_format_c_format"] = "none",
["anchor_point"] = "OUTER_RIGHT",
["text_fontSize"] = 10,
["anchorXOffset"] = 0,
["text_fontType"] = "OUTLINE",
},
{
["glowFrequency"] = 0.25,
["type"] = "subglow",
["useGlowColor"] = false,
["glowType"] = "buttonOverlay",
["glowLength"] = 10,
["glowYOffset"] = 0,
["glowColor"] = {
1,
1,
1,
1,
},
["glowDuration"] = 1,
["glowXOffset"] = 0,
["glowThickness"] = 1,
["glowScale"] = 1,
["glow"] = false,
["glowLines"] = 8,
["glowBorder"] = false,
},
},
["height"] = 18,
["load"] = {
["use_never"] = true,
["talent"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["useAdjustededMax"] = false,
["cooldownTextDisabled"] = false,
["uid"] = "dk2PA6K3TQ9",
["preferToUpdate"] = false,
["xOffset"] = 0,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["information"] = {
},
["conditions"] = {
},
["progressSource"] = {
-1,
"",
},
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
},
},
["anchorFrameType"] = "SCREEN",
["useCooldownModRate"] = true,
["zoom"] = 0,
["color"] = {
1,
1,
1,
1,
},
["tocversion"] = 11508,
["id"] = "AlchemyKitTracker_Icon",
["authorOptions"] = {
{
["subOptions"] = {
{
["type"] = "input",
["useDesc"] = false,
["width"] = 1,
["default"] = "",
["multiline"] = false,
["key"] = "item_name",
["length"] = 10,
["name"] = "Item name",
["useLength"] = false,
},
{
["min"] = 1,
["type"] = "number",
["key"] = "item_id",
["useDesc"] = false,
["default"] = 0,
["name"] = "Item id",
["step"] = 1,
["width"] = 1,
},
{
["min"] = 1,
["type"] = "number",
["default"] = 0,
["useDesc"] = false,
["key"] = "target_count",
["name"] = "Target count",
["step"] = 1,
["width"] = 1,
},
},
["type"] = "group",
["useDesc"] = false,
["nameSource"] = 0,
["name"] = "Resources to track",
["width"] = 1,
["useCollapse"] = false,
["noMerge"] = false,
["key"] = "resources",
["collapse"] = false,
["limitType"] = "none",
["groupType"] = "array",
["hideReorder"] = false,
["size"] = 10,
},
},
["frameStrata"] = 1,
["width"] = 18,
["alpha"] = 1,
["config"] = {
["resources"] = {
{
["item_id"] = 2447,
["target_count"] = 65,
["item_name"] = "Peacebloom",
},
{
["item_id"] = 765,
["target_count"] = 65,
["item_name"] = "Silverleaf",
},
{
["item_id"] = 2450,
["target_count"] = 100,
["item_name"] = "Briarthorn",
},
{
["item_id"] = 2453,
["target_count"] = 35,
["item_name"] = "Bruiseweed",
},
{
["item_id"] = 785,
["target_count"] = 20,
["item_name"] = "Mageroyal",
},
{
["item_id"] = 3820,
["target_count"] = 50,
["item_name"] = "Stranglekelp",
},
{
["item_id"] = 3357,
["target_count"] = 35,
["item_name"] = "Liferoot",
},
{
["item_id"] = 3356,
["target_count"] = 35,
["item_name"] = "Kingsblood",
},
{
["item_id"] = 3821,
["target_count"] = 35,
["item_name"] = "Goldthorn",
},
{
["item_id"] = 3355,
["target_count"] = 5,
["item_name"] = "Wild Steelbloom",
},
{
["item_id"] = 8838,
["target_count"] = 75,
["item_name"] = "Sungrass",
},
{
["item_id"] = 8836,
["target_count"] = 45,
["item_name"] = "Arthas' Tears",
},
{
["item_id"] = 8839,
["target_count"] = 60,
["item_name"] = "Blindweed",
},
{
["item_id"] = 13464,
["target_count"] = 75,
["item_name"] = "Golden Sansam",
},
{
["item_id"] = 13465,
["target_count"] = 20,
["item_name"] = "Mountain Silversage",
},
},
},
["inverse"] = false,
["selfPoint"] = "CENTER",
["displayIcon"] = 133939,
["cooldown"] = false,
["customText"] = "function()\n    local state = aura_env.state\n    local resource = state and state.resource\n    --print(DevTools_Dump(resource))\n    local resource_count = state and state.resource and state.resource.count\n    local target_count = state and state.resource.target_count    \n    local count = target_count and string.format(\"%s/%s\", resource_count, target_count) or resource_count\n    return string.format(\"%s: %s\", resource.name or \"N/A\", count)\nend",
},
["Battle Shout Missing"] = {
["iconSource"] = -1,
["color"] = {
1,
1,
1,
1,
},
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = 0,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["cooldownEdge"] = false,
["actions"] = {
["start"] = {
},
["init"] = {
},
["finish"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["type"] = "aura2",
["subeventSuffix"] = "_CAST_START",
["matchesShowOn"] = "showOnMissing",
["event"] = "Health",
["names"] = {
},
["spellIds"] = {
},
["auranames"] = {
"Battle Shout",
},
["subeventPrefix"] = "SPELL",
["useName"] = true,
["unit"] = "player",
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["internalVersion"] = 84,
["progressSource"] = {
-1,
"",
},
["animation"] = {
["start"] = {
["duration_type"] = "seconds",
["type"] = "none",
["easeStrength"] = 3,
["easeType"] = "none",
},
["main"] = {
["duration_type"] = "seconds",
["type"] = "none",
["easeStrength"] = 3,
["easeType"] = "none",
},
["finish"] = {
["duration_type"] = "seconds",
["type"] = "none",
["easeStrength"] = 3,
["easeType"] = "none",
},
},
["desaturate"] = false,
["subRegions"] = {
{
["type"] = "subbackground",
},
{
["text_shadowXOffset"] = 0,
["text_text_format_s_format"] = "none",
["text_text"] = "%s",
["text_shadowColor"] = {
0,
0,
0,
1,
},
["text_selfPoint"] = "AUTO",
["text_automaticWidth"] = "Auto",
["text_fixedWidth"] = 64,
["anchorYOffset"] = 0,
["text_justify"] = "CENTER",
["rotateText"] = "NONE",
["type"] = "subtext",
["text_color"] = {
1,
1,
1,
1,
},
["text_font"] = "Friz Quadrata TT",
["text_shadowYOffset"] = 0,
["text_wordWrap"] = "WordWrap",
["text_fontType"] = "OUTLINE",
["anchor_point"] = "INNER_BOTTOMRIGHT",
["text_fontSize"] = 12,
["anchorXOffset"] = 0,
["text_visible"] = true,
},
{
["glowFrequency"] = 0.25,
["type"] = "subglow",
["glowDuration"] = 1,
["glowScale"] = 1,
["glowThickness"] = 1,
["glowYOffset"] = 0,
["glowColor"] = {
1,
1,
1,
1,
},
["glowXOffset"] = 0,
["useGlowColor"] = false,
["glowLength"] = 10,
["glowType"] = "buttonOverlay",
["glow"] = false,
["glowLines"] = 8,
["glowBorder"] = false,
},
},
["height"] = 46,
["load"] = {
["use_mounted"] = false,
["use_zone"] = true,
["talent"] = {
["multi"] = {
},
},
["zone"] = "-Thunder Bluff,-Orgrimmar",
["use_vehicle"] = false,
["class"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["useAdjustededMax"] = false,
["preferToUpdate"] = false,
["icon"] = true,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["authorOptions"] = {
},
["selfPoint"] = "CENTER",
["information"] = {
},
["keepAspectRatio"] = false,
["uid"] = "NaJ3hmu)AmJ",
["zoom"] = 0,
["cooldownTextDisabled"] = false,
["anchorFrameType"] = "SCREEN",
["tocversion"] = 11508,
["id"] = "Battle Shout Missing",
["useCooldownModRate"] = true,
["frameStrata"] = 1,
["width"] = 46,
["alpha"] = 1,
["config"] = {
},
["inverse"] = false,
["parent"] = "Main Notifications",
["conditions"] = {
},
["cooldown"] = true,
["xOffset"] = 0,
},
["Alchemy Kit Tracker"] = {
["grow"] = "DOWN",
["controlledChildren"] = {
"AlchemyKitTracker_Icon",
},
["borderBackdrop"] = "Blizzard Tooltip",
["authorOptions"] = {
},
["preferToUpdate"] = false,
["yOffset"] = -50.28424072265625,
["gridType"] = "RD",
["fullCircle"] = true,
["useAnchorPerUnit"] = false,
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["debuffType"] = "HELPFUL",
["type"] = "aura2",
["spellIds"] = {
},
["subeventSuffix"] = "_CAST_START",
["unit"] = "player",
["names"] = {
},
["event"] = "Health",
["subeventPrefix"] = "SPELL",
},
["untrigger"] = {
},
},
},
["columnSpace"] = 1,
["internalVersion"] = 84,
["useLimit"] = false,
["align"] = "CENTER",
["stagger"] = 0,
["alpha"] = 1,
["rotation"] = 0,
["space"] = 0,
["rowSpace"] = 1,
["subRegions"] = {
},
["animation"] = {
["start"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["sortHybridTable"] = {
["AlchemyKitTracker_Icon"] = false,
},
["load"] = {
["talent"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["radius"] = 200,
["backdropColor"] = {
1,
1,
1,
0.5,
},
["borderColor"] = {
0,
0,
0,
1,
},
["animate"] = false,
["config"] = {
},
["scale"] = 1,
["centerType"] = "LR",
["border"] = false,
["anchorFrameFrame"] = "SUFUnitplayer",
["regionType"] = "dynamicgroup",
["borderSize"] = 2,
["sort"] = "none",
["limit"] = 5,
["xOffset"] = -50.56735229492188,
["constantFactor"] = "RADIUS",
["frameStrata"] = 1,
["borderOffset"] = 4,
["arcLength"] = 360,
["tocversion"] = 11508,
["id"] = "Alchemy Kit Tracker",
["stepAngle"] = 15,
["gridWidth"] = 5,
["anchorFrameType"] = "SELECTFRAME",
["borderEdge"] = "Square Full White",
["uid"] = "RcSZjHkrDf8",
["borderInset"] = 1,
["anchorPoint"] = "TOP",
["conditions"] = {
},
["information"] = {
},
["selfPoint"] = "TOP",
},
["ProfessionTracker_Icon"] = {
["iconSource"] = 1,
["parent"] = "Profession Tracker",
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = 0,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["cooldownEdge"] = false,
["actions"] = {
["start"] = {
},
["init"] = {
},
["finish"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["type"] = "custom",
["custom_hide"] = "timed",
["custom_type"] = "stateupdate",
["unit"] = "player",
["use_unit"] = true,
["event"] = "Character Stats",
["subeventPrefix"] = "SPELL",
["events"] = "SKILL_LINES_CHANGED",
["custom"] = "function(allstates, event)\n    wipe(allstates)\n    \n    local function get_icon(profession_name)\n        for _, p in ipairs(aura_env.config.professions) do\n            if p.name == profession_name then return p.icon_number end\n        end\n        \n    end\n    \n    local function get_skills()\n        local result = {}\n        --local icons = { [\"Herbalism\"] = 133939, [\"Mining\"] = 136025 }\n        \n        for i = 1, GetNumSkillLines() do\n            local name, _, _, rank, _, _, max_rank = GetSkillLineInfo(i)\n            local icon = get_icon(name)\n            \n            if icon then\n                table.insert(result, {\n                        name=name,\n                        icon=icon,\n                        rank=rank,\n                        max_rank=max_rank\n                })\n            end\n        end\n        \n        return result\n    end\n    \n    for i, s in ipairs(get_skills()) do\n        local state = {}\n        state.show = true\n        state.changed = true\n        state.icon = s.icon\n        state.skill = s\n        state.progressType = \"static\"\n        state.duration = 0\n        allstates[i] = state\n    end\n    \n    return true\nend",
["spellIds"] = {
},
["customIcon"] = "function()\n  return 133939\nend",
["check"] = "event",
["names"] = {
},
["subeventSuffix"] = "_CAST_START",
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["internalVersion"] = 84,
["keepAspectRatio"] = false,
["selfPoint"] = "CENTER",
["desaturate"] = false,
["subRegions"] = {
{
["type"] = "subbackground",
},
{
["text_shadowXOffset"] = 0,
["text_text_format_s_format"] = "none",
["text_text"] = "%c",
["text_shadowColor"] = {
0,
0,
0,
1,
},
["text_selfPoint"] = "AUTO",
["text_automaticWidth"] = "Auto",
["text_fixedWidth"] = 64,
["anchorYOffset"] = 0,
["text_justify"] = "CENTER",
["rotateText"] = "NONE",
["type"] = "subtext",
["text_anchorXOffset"] = 0,
["text_color"] = {
1,
1,
1,
1,
},
["text_font"] = "Friz Quadrata TT",
["text_shadowYOffset"] = 0,
["text_wordWrap"] = "WordWrap",
["text_visible"] = true,
["text_fontType"] = "OUTLINE",
["anchor_point"] = "OUTER_RIGHT",
["text_fontSize"] = 8,
["anchorXOffset"] = 0,
["text_text_format_c_format"] = "none",
},
{
["glowFrequency"] = 0.25,
["type"] = "subglow",
["glowDuration"] = 1,
["glowType"] = "buttonOverlay",
["glowLength"] = 10,
["glowYOffset"] = 0,
["glowColor"] = {
1,
1,
1,
1,
},
["useGlowColor"] = false,
["glowXOffset"] = 0,
["glow"] = false,
["glowScale"] = 1,
["glowThickness"] = 1,
["glowLines"] = 8,
["glowBorder"] = false,
},
},
["height"] = 18,
["load"] = {
["size"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["talent"] = {
["multi"] = {
},
},
},
["useAdjustededMax"] = false,
["color"] = {
1,
1,
1,
1,
},
["config"] = {
["professions"] = {
{
["name"] = "Herbalism",
["icon_number"] = "133939",
},
{
["name"] = "Mining",
["icon_number"] = "136025",
},
},
},
["progressSource"] = {
-1,
"",
},
["preferToUpdate"] = false,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["cooldown"] = false,
["displayIcon"] = "",
["icon"] = true,
["customText"] = "function()\n  local state = aura_env.state\n  local skill = state and state.skill\n  local max_rank = skill.rank and skill.max_rank and skill.rank ~= skill.max_rank and string.format(\"/%s\", skill.max_rank) or \"\"\n  return string.format(\"%s%s\", skill.rank, max_rank)\nend",
["width"] = 18,
["alpha"] = 1,
["cooldownTextDisabled"] = false,
["useCooldownModRate"] = true,
["tocversion"] = 11508,
["id"] = "ProfessionTracker_Icon",
["animation"] = {
["start"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["frameStrata"] = 1,
["anchorFrameType"] = "SCREEN",
["zoom"] = 0,
["uid"] = "OX8x42ouGLU",
["inverse"] = false,
["authorOptions"] = {
{
["subOptions"] = {
{
["type"] = "input",
["useDesc"] = true,
["width"] = 1,
["desc"] = "The name of a profession (e.g. Herbalism)",
["name"] = "Name",
["default"] = "",
["key"] = "name",
["length"] = 10,
["multiline"] = false,
["useLength"] = false,
},
{
["type"] = "input",
["useDesc"] = true,
["width"] = 1,
["desc"] = "Icon number for the profession (e.g. 133939)",
["name"] = "Icon number",
["default"] = "",
["key"] = "icon_number",
["length"] = 10,
["multiline"] = false,
["useLength"] = false,
},
},
["type"] = "group",
["useDesc"] = false,
["nameSource"] = 0,
["key"] = "professions",
["width"] = 1,
["useCollapse"] = false,
["noMerge"] = false,
["name"] = "Professions",
["hideReorder"] = true,
["limitType"] = "none",
["groupType"] = "array",
["collapse"] = false,
["size"] = 10,
},
},
["conditions"] = {
},
["information"] = {
},
["xOffset"] = 0,
},
["Battle Shout running out"] = {
["iconSource"] = -1,
["color"] = {
1,
1,
1,
1,
},
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = 0,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["cooldownEdge"] = false,
["actions"] = {
["start"] = {
},
["init"] = {
},
["finish"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["rem"] = "10",
["subeventSuffix"] = "_CAST_START",
["debuffType"] = "HELPFUL",
["matchesShowOn"] = "showOnActive",
["event"] = "Health",
["names"] = {
},
["unit"] = "player",
["subeventPrefix"] = "SPELL",
["spellIds"] = {
},
["auranames"] = {
"Battle Shout",
},
["remOperator"] = "<=",
["type"] = "aura2",
["useName"] = true,
["useRem"] = true,
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["internalVersion"] = 84,
["progressSource"] = {
-1,
"",
},
["animation"] = {
["start"] = {
["duration_type"] = "seconds",
["type"] = "none",
["easeStrength"] = 3,
["easeType"] = "none",
},
["main"] = {
["duration_type"] = "seconds",
["type"] = "none",
["easeStrength"] = 3,
["easeType"] = "none",
},
["finish"] = {
["duration_type"] = "seconds",
["type"] = "none",
["easeStrength"] = 3,
["easeType"] = "none",
},
},
["desaturate"] = true,
["subRegions"] = {
{
["type"] = "subbackground",
},
{
["text_shadowXOffset"] = 0,
["text_text_format_s_format"] = "none",
["text_text"] = "%s",
["text_shadowColor"] = {
0,
0,
0,
1,
},
["text_selfPoint"] = "AUTO",
["text_automaticWidth"] = "Auto",
["text_fixedWidth"] = 64,
["anchorYOffset"] = 0,
["text_justify"] = "CENTER",
["rotateText"] = "NONE",
["type"] = "subtext",
["text_color"] = {
1,
1,
1,
1,
},
["text_font"] = "Friz Quadrata TT",
["text_shadowYOffset"] = 0,
["text_wordWrap"] = "WordWrap",
["text_fontType"] = "OUTLINE",
["anchor_point"] = "INNER_BOTTOMRIGHT",
["text_fontSize"] = 12,
["anchorXOffset"] = 0,
["text_visible"] = true,
},
{
["glowFrequency"] = 0.25,
["type"] = "subglow",
["glowDuration"] = 1,
["glowScale"] = 1,
["glowThickness"] = 1,
["glowYOffset"] = 0,
["glowColor"] = {
1,
1,
1,
1,
},
["glowXOffset"] = 0,
["useGlowColor"] = false,
["glowLength"] = 10,
["glowType"] = "buttonOverlay",
["glow"] = false,
["glowLines"] = 8,
["glowBorder"] = false,
},
},
["height"] = 46,
["load"] = {
["use_mounted"] = false,
["use_zone"] = true,
["talent"] = {
["multi"] = {
},
},
["zone"] = "-Thunder Bluff,-Orgrimmar",
["use_vehicle"] = false,
["class"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["useAdjustededMax"] = false,
["parent"] = "Main Notifications",
["preferToUpdate"] = false,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["xOffset"] = 0,
["authorOptions"] = {
},
["information"] = {
},
["icon"] = true,
["uid"] = "dJKhBnYEhoY",
["useCooldownModRate"] = true,
["cooldownTextDisabled"] = false,
["anchorFrameType"] = "SCREEN",
["tocversion"] = 11508,
["id"] = "Battle Shout running out",
["alpha"] = 1,
["frameStrata"] = 1,
["width"] = 46,
["zoom"] = 0,
["config"] = {
},
["inverse"] = false,
["selfPoint"] = "CENTER",
["conditions"] = {
},
["cooldown"] = true,
["keepAspectRatio"] = false,
},
["Interrupted"] = {
["outline"] = "OUTLINE",
["authorOptions"] = {
},
["displayText"] = "",
["shadowYOffset"] = -1,
["anchorPoint"] = "CENTER",
["displayText_format_p_time_format"] = 0,
["customTextUpdate"] = "event",
["automaticWidth"] = "Auto",
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["type"] = "combatlog",
["subeventSuffix"] = "_INTERRUPT",
["event"] = "Combat Log",
["subeventPrefix"] = "SPELL",
["unit"] = "player",
["spellIds"] = {
},
["use_sourceUnit"] = true,
["use_sourceName"] = false,
["names"] = {
},
["sourceUnit"] = "player",
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["displayText_format_p_format"] = "timed",
["internalVersion"] = 84,
["selfPoint"] = "BOTTOM",
["font"] = "Friz Quadrata TT",
["subRegions"] = {
{
["type"] = "subbackground",
},
},
["load"] = {
["talent"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["fontSize"] = 12,
["shadowXOffset"] = 1,
["regionType"] = "text",
["displayText_format_p_time_legacy_floor"] = false,
["displayText_format_p_time_mod_rate"] = true,
["displayText_format_p_time_precision"] = 1,
["conditions"] = {
},
["parent"] = "Warrior",
["displayText_format_p_time_dynamic_threshold"] = 60,
["justify"] = "LEFT",
["wordWrap"] = "WordWrap",
["id"] = "Interrupted",
["config"] = {
},
["frameStrata"] = 1,
["anchorFrameType"] = "SCREEN",
["yOffset"] = 0,
["uid"] = "yc0a(Q4LTPA",
["xOffset"] = 0,
["color"] = {
1,
1,
1,
1,
},
["shadowColor"] = {
0,
0,
0,
1,
},
["fixedWidth"] = 200,
["information"] = {
},
["animation"] = {
["start"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
},
["Tracking"] = {
["controlledChildren"] = {
"Find Minerals",
"Find Herbs",
},
["borderBackdrop"] = "Blizzard Tooltip",
["authorOptions"] = {
},
["preferToUpdate"] = false,
["yOffset"] = 20,
["anchorPoint"] = "BOTTOMLEFT",
["borderColor"] = {
0,
0,
0,
1,
},
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["debuffType"] = "HELPFUL",
["type"] = "aura2",
["spellIds"] = {
},
["subeventSuffix"] = "_CAST_START",
["unit"] = "player",
["subeventPrefix"] = "SPELL",
["event"] = "Health",
["names"] = {
},
},
["untrigger"] = {
},
},
},
["internalVersion"] = 84,
["selfPoint"] = "CENTER",
["subRegions"] = {
},
["load"] = {
["talent"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["backdropColor"] = {
1,
1,
1,
0.5,
},
["scale"] = 1,
["border"] = false,
["borderEdge"] = "Square Full White",
["regionType"] = "group",
["borderSize"] = 2,
["borderOffset"] = 4,
["config"] = {
},
["tocversion"] = 11508,
["id"] = "Tracking",
["xOffset"] = 20,
["frameStrata"] = 1,
["anchorFrameType"] = "SELECTFRAME",
["animation"] = {
["start"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["uid"] = "t2A(CJA8hJw",
["borderInset"] = 1,
["anchorFrameFrame"] = "Minimap",
["conditions"] = {
},
["information"] = {
},
["alpha"] = 1,
},
["Profession Tracker"] = {
["grow"] = "LEFT",
["controlledChildren"] = {
"ProfessionTracker_Icon",
},
["borderBackdrop"] = "Blizzard Tooltip",
["xOffset"] = -17,
["preferToUpdate"] = false,
["yOffset"] = -153,
["gridType"] = "RD",
["fullCircle"] = true,
["space"] = 22,
["actions"] = {
["start"] = {
},
["init"] = {
},
["finish"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["debuffType"] = "HELPFUL",
["type"] = "aura2",
["spellIds"] = {
},
["subeventSuffix"] = "_CAST_START",
["unit"] = "player",
["subeventPrefix"] = "SPELL",
["event"] = "Health",
["names"] = {
},
},
["untrigger"] = {
},
},
},
["columnSpace"] = 1,
["internalVersion"] = 84,
["selfPoint"] = "RIGHT",
["align"] = "CENTER",
["sort"] = "none",
["frameStrata"] = 1,
["stagger"] = 0,
["radius"] = 200,
["anchorPoint"] = "TOPRIGHT",
["subRegions"] = {
},
["gridWidth"] = 5,
["animation"] = {
["start"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["load"] = {
["size"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["talent"] = {
["multi"] = {
},
},
},
["borderColor"] = {
0,
0,
0,
1,
},
["backdropColor"] = {
1,
1,
1,
0.5,
},
["useAnchorPerUnit"] = false,
["animate"] = false,
["config"] = {
},
["scale"] = 1,
["centerType"] = "LR",
["border"] = false,
["borderEdge"] = "Square Full White",
["stepAngle"] = 15,
["borderSize"] = 2,
["limit"] = 5,
["useLimit"] = false,
["anchorFrameFrame"] = "Minimap",
["constantFactor"] = "RADIUS",
["rowSpace"] = 1,
["borderOffset"] = 4,
["arcLength"] = 360,
["tocversion"] = 11508,
["id"] = "Profession Tracker",
["regionType"] = "dynamicgroup",
["alpha"] = 1,
["anchorFrameType"] = "SELECTFRAME",
["borderInset"] = 1,
["uid"] = "i(V2bk6jrEX",
["rotation"] = 0,
["sortHybridTable"] = {
["ProfessionTracker_Icon"] = false,
},
["conditions"] = {
},
["information"] = {
},
["authorOptions"] = {
},
},
},
["lastArchiveClear"] = 1766269811,
["minimap"] = {
["hide"] = true,
},
["lastUpgrade"] = 1746322610,
["dbVersion"] = 84,
["migrationCutoff"] = 730,
["registered"] = {
},
["login_squelch_time"] = 10,
["historyCutoff"] = 730,
["editor_theme"] = "Monokai",
}
