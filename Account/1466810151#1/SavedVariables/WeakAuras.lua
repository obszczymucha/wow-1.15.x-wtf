
WeakAurasSaved = {
["dynamicIconCache"] = {
},
["editor_tab_spaces"] = 4,
["editor_font_size"] = 12,
["registered"] = {
},
["displays"] = {
["ResourceTracker_Icon"] = {
["iconSource"] = 1,
["xOffset"] = 0,
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
["custom_type"] = "stateupdate",
["subeventSuffix"] = "_CAST_START",
["use_unit"] = true,
["event"] = "Character Stats",
["subeventPrefix"] = "SPELL",
["events"] = "BAG_UPDATE",
["custom"] = "function(allstates, event)\n    wipe(allstates)\n    \n    local function get_resources()\n        local result = {}\n        \n        for _, p in ipairs(aura_env.config.resources) do\n            local name, link, _, _, _, _, _, _, _, icon = GetItemInfo(p.item_id)\n            \n            result[p.item_id] = {\n                name = name,\n                link = link,\n                icon = icon,\n                target_count = p.target_count\n            }\n        end\n        \n        return result\n    end\n    \n    local function get_items()\n        local result = {}\n        local resources = get_resources()\n        --local icons = { [\"Herbalism\"] = 133939, [\"Mining\"] = 136025 }\n        \n        for bag = 0, NUM_BAG_SLOTS do\n            for slot = 1, C_Container.GetContainerNumSlots(bag) do\n                local info = C_Container.GetContainerItemInfo(bag, slot)\n                \n                if info then\n                    local item_id = info.itemID\n                    local resource = resources[item_id]\n                    \n                    if resource then\n                        local value = result[item_id]\n                        \n                        if value then\n                            value.count = value.count + info.stackCount\n                        else\n                            result[item_id] = {\n                                resource = resource,\n                                count = info.stackCount\n                            }        \n                        end \n                    end\n                end\n                \n            end\n        end\n        \n        return result\n    end\n    \n    local i = 1\n    \n    for item_id, item in pairs(get_items()) do\n        local state = {}\n        state.show = true\n        state.changed = true\n        state.icon = item.resource.icon\n        state.resource = item.resource\n        state.resource_count = item.count\n        state.progressType = \"static\"\n        state.duration = 0\n        allstates[i] = state\n        i = i + 1\n    end\n    \n    return true\nend",
["spellIds"] = {
},
["customIcon"] = "function()\n  return 133939\nend",
["check"] = "event",
["unit"] = "player",
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
["height"] = 18,
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
["parent"] = "Resource Tracker",
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
},
},
["useAdjustededMin"] = false,
["regionType"] = "icon",
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
["keepAspectRatio"] = false,
["information"] = {
},
["conditions"] = {
},
["uid"] = "Zqgd31Y8FbR",
["authorOptions"] = {
{
["subOptions"] = {
{
["type"] = "input",
["useDesc"] = false,
["width"] = 1,
["default"] = "",
["multiline"] = false,
["name"] = "Item name",
["length"] = 10,
["key"] = "item_name",
["useLength"] = false,
},
{
["min"] = 1,
["type"] = "number",
["useDesc"] = false,
["key"] = "item_id",
["default"] = 0,
["name"] = "Item id",
["step"] = 1,
["width"] = 1,
},
{
["min"] = 1,
["type"] = "number",
["useDesc"] = false,
["default"] = 0,
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
["zoom"] = 0,
["anchorFrameType"] = "SCREEN",
["alpha"] = 1,
["id"] = "ResourceTracker_Icon",
["cooldownTextDisabled"] = false,
["frameStrata"] = 1,
["width"] = 18,
["useCooldownModRate"] = true,
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
["item_name"] = "Briarthorn",
["target_count"] = 100,
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
["item_name"] = "Kingsblood",
["target_count"] = 35,
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
["color"] = {
1,
1,
1,
1,
},
["displayIcon"] = 133939,
["cooldown"] = false,
["customText"] = "function()\n    local state = aura_env.state\n    local resource = state and state.resource\n    --print(DevTools_Dump(resource))\n    local resource_count = state and state.resource_count\n    local target_count = state and state.resource.target_count    \n    local count = target_count and string.format(\"%s/%s\", resource_count, target_count) or resource_count\n    return string.format(\"%s: %s\", resource.name or \"N/A\", count)\nend",
},
["Resource Tracker"] = {
["grow"] = "DOWN",
["controlledChildren"] = {
"ResourceTracker_Icon",
},
["borderBackdrop"] = "Blizzard Tooltip",
["authorOptions"] = {
},
["yOffset"] = -117.444580078125,
["gridType"] = "RD",
["borderColor"] = {
0,
0,
0,
1,
},
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
["names"] = {
},
["type"] = "aura2",
["spellIds"] = {
},
["subeventSuffix"] = "_CAST_START",
["unit"] = "player",
["subeventPrefix"] = "SPELL",
["event"] = "Health",
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
},
["columnSpace"] = 1,
["radius"] = 200,
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
["align"] = "CENTER",
["rotation"] = 0,
["sort"] = "none",
["subRegions"] = {
},
["uid"] = "BueZHocioUQ",
["fullCircle"] = true,
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
["config"] = {
},
["backdropColor"] = {
1,
1,
1,
0.5,
},
["useLimit"] = false,
["animate"] = false,
["anchorPoint"] = "TOPLEFT",
["scale"] = 1,
["centerType"] = "LR",
["border"] = false,
["borderEdge"] = "Square Full White",
["regionType"] = "dynamicgroup",
["borderSize"] = 2,
["limit"] = 5,
["stagger"] = 0,
["internalVersion"] = 84,
["constantFactor"] = "RADIUS",
["arcLength"] = 360,
["borderOffset"] = 4,
["alpha"] = 1,
["frameStrata"] = 1,
["id"] = "Resource Tracker",
["rowSpace"] = 1,
["gridWidth"] = 5,
["anchorFrameType"] = "UIPARENT",
["xOffset"] = 203.9507904052734,
["borderInset"] = 1,
["selfPoint"] = "TOP",
["stepAngle"] = 15,
["conditions"] = {
},
["information"] = {
},
["space"] = 0,
},
["Find Minerals"] = {
["iconSource"] = -1,
["xOffset"] = 0,
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
["debuffType"] = "HELPFUL",
["unit"] = "player",
["events"] = "MINIMAP_UPDATE_TRACKING,PLAYER_ENTERING_WORLD",
["names"] = {
},
["custom_type"] = "event",
["spellIds"] = {
},
["custom"] = "function()\n  return GetTrackingTexture() == 136025\nend",
["custom_hide"] = "custom",
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
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
},
},
["useAdjustededMin"] = false,
["regionType"] = "icon",
["conditions"] = {
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
["parent"] = "Tracking",
["information"] = {
},
["color"] = {
1,
1,
1,
1,
},
["uid"] = "7ff20rHeNhN",
["zoom"] = 0,
["cooldownTextDisabled"] = false,
["anchorFrameType"] = "SCREEN",
["id"] = "Find Minerals",
["frameStrata"] = 1,
["useCooldownModRate"] = true,
["width"] = 24,
["alpha"] = 1,
["config"] = {
},
["inverse"] = false,
["authorOptions"] = {
},
["displayIcon"] = "136025",
["cooldown"] = true,
["keepAspectRatio"] = false,
},
["Find Herbs"] = {
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
["icon"] = true,
["triggers"] = {
{
["trigger"] = {
["type"] = "custom",
["subeventSuffix"] = "_CAST_START",
["event"] = "Chat Message",
["subeventPrefix"] = "SPELL",
["custom_hide"] = "custom",
["custom"] = "function()\n  return GetTrackingTexture() == 133939\nend",
["spellIds"] = {
},
["events"] = "MINIMAP_UPDATE_TRACKING,PLAYER_ENTERING_WORLD",
["custom_type"] = "event",
["names"] = {
},
["unit"] = "player",
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
["custom"] = "function()\n  return GetTrackingTexture() ~= 133939\nend",
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
["xOffset"] = 0,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["displayIcon"] = 133939,
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
["parent"] = "Tracking",
["cooldown"] = true,
["authorOptions"] = {
},
["config"] = {
},
["zoom"] = 0,
["cooldownTextDisabled"] = false,
["width"] = 24,
["id"] = "Find Herbs",
["useCooldownModRate"] = true,
["alpha"] = 1,
["anchorFrameType"] = "SCREEN",
["frameStrata"] = 1,
["uid"] = "d3(b3qoX5JH",
["inverse"] = false,
["keepAspectRatio"] = false,
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
["ProfessionTracker_Icon"] = {
["iconSource"] = 1,
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
["icon"] = true,
["triggers"] = {
{
["trigger"] = {
["type"] = "custom",
["custom_hide"] = "timed",
["custom_type"] = "stateupdate",
["subeventPrefix"] = "SPELL",
["names"] = {
},
["event"] = "Character Stats",
["use_unit"] = true,
["spellIds"] = {
},
["events"] = "SKILL_LINES_CHANGED",
["custom"] = "function(allstates, event)\n    wipe(allstates)\n    \n    local function get_icon(profession_name)\n        for _, p in ipairs(aura_env.config.professions) do\n            if p.name == profession_name then return p.icon_number end\n        end\n        \n    end\n    \n    local function get_skills()\n        local result = {}\n        --local icons = { [\"Herbalism\"] = 133939, [\"Mining\"] = 136025 }\n        \n        for i = 1, GetNumSkillLines() do\n            local name, _, _, rank, _, _, max_rank = GetSkillLineInfo(i)\n            local icon = get_icon(name)\n            \n            if icon then\n                table.insert(result, {\n                        name=name,\n                        icon=icon,\n                        rank=rank,\n                        max_rank=max_rank\n                })\n            end\n        end\n        \n        return result\n    end\n    \n    for i, s in ipairs(get_skills()) do\n        local state = {}\n        state.show = true\n        state.changed = true\n        state.icon = s.icon\n        state.skill = s\n        state.progressType = \"static\"\n        state.duration = 0\n        allstates[i] = state\n    end\n    \n    return true\nend",
["customIcon"] = "function()\n  return 133939\nend",
["check"] = "event",
["unit"] = "player",
["subeventSuffix"] = "_CAST_START",
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
["xOffset"] = 0,
["keepAspectRatio"] = false,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["parent"] = "Profession Tracker",
["actions"] = {
["start"] = {
},
["init"] = {
},
["finish"] = {
},
},
["cooldown"] = false,
["displayIcon"] = "",
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
["cooldownTextDisabled"] = false,
["zoom"] = 0,
["width"] = 18,
["useCooldownModRate"] = true,
["id"] = "ProfessionTracker_Icon",
["frameStrata"] = 1,
["alpha"] = 1,
["anchorFrameType"] = "SCREEN",
["authorOptions"] = {
{
["subOptions"] = {
{
["type"] = "input",
["useDesc"] = true,
["width"] = 1,
["desc"] = "The name of a profession (e.g. Herbalism)",
["default"] = "",
["key"] = "name",
["name"] = "Name",
["length"] = 10,
["multiline"] = false,
["useLength"] = false,
},
{
["type"] = "input",
["useDesc"] = true,
["width"] = 1,
["desc"] = "Icon number for the profession (e.g. 133939)",
["default"] = "",
["key"] = "icon_number",
["name"] = "Icon number",
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
["uid"] = "OX8x42ouGLU",
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
["customText"] = "function()\n  local state = aura_env.state\n  local skill = state and state.skill\n  local max_rank = skill.rank and skill.max_rank and skill.rank ~= skill.max_rank and string.format(\"/%s\", skill.max_rank) or \"\"\n  return string.format(\"%s%s\", skill.rank, max_rank)\nend",
},
["Tracking"] = {
["backdropColor"] = {
1,
1,
1,
0.5,
},
["controlledChildren"] = {
"Find Minerals",
"Find Herbs",
},
["borderBackdrop"] = "Blizzard Tooltip",
["authorOptions"] = {
},
["yOffset"] = 20,
["border"] = false,
["anchorFrameFrame"] = "Minimap",
["anchorPoint"] = "BOTTOMLEFT",
["borderSize"] = 2,
["xOffset"] = 20,
["borderColor"] = {
0,
0,
0,
1,
},
["borderInset"] = 1,
["borderEdge"] = "Square Full White",
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
["regionType"] = "group",
["borderOffset"] = 4,
["scale"] = 1,
["selfPoint"] = "CENTER",
["id"] = "Tracking",
["internalVersion"] = 84,
["frameStrata"] = 1,
["anchorFrameType"] = "SELECTFRAME",
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
["uid"] = "t2A(CJA8hJw",
["alpha"] = 1,
["subRegions"] = {
},
["config"] = {
},
["conditions"] = {
},
["information"] = {
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
},
["Profession Tracker"] = {
["grow"] = "LEFT",
["controlledChildren"] = {
"ProfessionTracker_Icon",
},
["borderBackdrop"] = "Blizzard Tooltip",
["xOffset"] = -17,
["yOffset"] = -153,
["anchorPoint"] = "TOPRIGHT",
["borderColor"] = {
0,
0,
0,
1,
},
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
["radius"] = 200,
["selfPoint"] = "RIGHT",
["align"] = "CENTER",
["stagger"] = 0,
["config"] = {
},
["regionType"] = "dynamicgroup",
["subRegions"] = {
},
["authorOptions"] = {
},
["useLimit"] = false,
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
["fullCircle"] = true,
["backdropColor"] = {
1,
1,
1,
0.5,
},
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
["animate"] = false,
["gridType"] = "RD",
["scale"] = 1,
["centerType"] = "LR",
["border"] = false,
["borderEdge"] = "Square Full White",
["stepAngle"] = 15,
["borderSize"] = 2,
["limit"] = 5,
["useAnchorPerUnit"] = false,
["uid"] = "i(V2bk6jrEX",
["constantFactor"] = "RADIUS",
["gridWidth"] = 5,
["borderOffset"] = 4,
["rowSpace"] = 1,
["frameStrata"] = 1,
["id"] = "Profession Tracker",
["arcLength"] = 360,
["alpha"] = 1,
["anchorFrameType"] = "SELECTFRAME",
["sort"] = "none",
["borderInset"] = 1,
["anchorFrameFrame"] = "Minimap",
["internalVersion"] = 84,
["conditions"] = {
},
["information"] = {
},
["rotation"] = 0,
},
},
["login_squelch_time"] = 10,
["lastArchiveClear"] = 1766457156,
["minimap"] = {
["hide"] = true,
},
["historyCutoff"] = 730,
["dbVersion"] = 84,
["migrationCutoff"] = 730,
["features"] = {
},
["lastUpgrade"] = 1746322610,
["personalRessourceDisplayFrame"] = {
["xOffset"] = -407.1359569257854,
["yOffset"] = -489.4713648726673,
},
["editor_theme"] = "Monokai",
}
