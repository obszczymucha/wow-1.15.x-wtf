
WeakAurasSaved = {
["dynamicIconCache"] = {
},
["editor_tab_spaces"] = 4,
["login_squelch_time"] = 10,
["features"] = {
},
["editor_font_size"] = 12,
["displays"] = {
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
["custom_hide"] = "custom",
["custom"] = "function()\n  return GetTrackingTexture() == 136025\nend",
["events"] = "MINIMAP_UPDATE_TRACKING,PLAYER_ENTERING_WORLD",
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
["actions"] = {
["start"] = {
},
["init"] = {
},
["finish"] = {
},
},
["useAdjustededMin"] = false,
["regionType"] = "icon",
["displayIcon"] = "136025",
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
["color"] = {
1,
1,
1,
1,
},
["config"] = {
},
["zoom"] = 0,
["alpha"] = 1,
["width"] = 24,
["id"] = "Find Minerals",
["useCooldownModRate"] = true,
["frameStrata"] = 1,
["anchorFrameType"] = "SCREEN",
["cooldownTextDisabled"] = false,
["uid"] = "7ff20rHeNhN",
["inverse"] = false,
["authorOptions"] = {
},
["conditions"] = {
},
["information"] = {
},
["keepAspectRatio"] = false,
},
["EngineeringKitTracker_Icon"] = {
["iconSource"] = 1,
["xOffset"] = 0,
["adjustedMax"] = "",
["customText"] = "function()\n    local state = aura_env.state\n    local resource = state and state.resource\n    --print(DevTools_Dump(resource))\n    local resource_count = state and state.resource and state.resource.count\n    local target_count = state and state.resource.target_count    \n    local count = target_count and string.format(\"%s/%s\", resource_count, target_count) or resource_count\n    return string.format(\"%s: %s\", resource.name or \"N/A\", count)\nend",
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
["unit"] = "player",
["event"] = "Character Stats",
["subeventPrefix"] = "SPELL",
["events"] = "BAG_UPDATE",
["custom"] = "function(allstates, event)\n    wipe(allstates)\n    \n    local function get_resources()\n        local result = {}\n        \n        for _, p in ipairs(aura_env.config.resources) do\n            local name, link, _, _, _, _, _, _, _, icon = GetItemInfo(p.item_id)\n            table.insert(result, {\n                    item_id = p.item_id,\n                    name = name,\n                    link = link,\n                    icon = icon,\n                    target_count = p.target_count,\n                    count = 0\n            })\n        end\n        \n        return result\n    end\n    \n    local function get_resource(resources, item_id)\n        for _, r in ipairs(resources) do\n            if r.item_id == item_id then return r end\n        end\n    end\n    \n    local function get_items()\n        local result = get_resources()\n        --local icons = { [\"Herbalism\"] = 133939, [\"Mining\"] = 136025 }\n        \n        for bag = 0, NUM_BAG_SLOTS do\n            for slot = 1, C_Container.GetContainerNumSlots(bag) do\n                local info = C_Container.GetContainerItemInfo(bag, slot)\n                \n                if info then\n                    local item_id = info.itemID\n                    local resource = get_resource(result, item_id)\n                    \n                    if resource then\n                        resource.count = resource.count + info.stackCount\n                    end \n                end\n                \n            end\n        end\n        \n        return result\n    end\n    \n    local i = 1\n    \n    for _, item in ipairs(get_items()) do\n        local state = {}\n        state.show = true\n        state.changed = true\n        state.icon = item.icon\n        state.resource = item\n        state.progressType = \"static\"\n        state.duration = 0\n        allstates[i] = state\n        i = i + 1\n    end\n    \n    return true\nend",
["spellIds"] = {
},
["customIcon"] = "function()\n  return 133939\nend",
["check"] = "event",
["names"] = {
},
["use_unit"] = true,
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
["frameStrata"] = 1,
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
["progressSource"] = {
-1,
"",
},
["parent"] = "Engineering Kit Tracker",
["information"] = {
},
["conditions"] = {
},
["uid"] = "eyXxRtVkM1d",
["authorOptions"] = {
{
["subOptions"] = {
{
["type"] = "input",
["useDesc"] = false,
["width"] = 1,
["default"] = "",
["key"] = "item_name",
["name"] = "Item name",
["length"] = 10,
["multiline"] = false,
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
["zoom"] = 0,
["anchorFrameType"] = "SCREEN",
["alpha"] = 1,
["id"] = "EngineeringKitTracker_Icon",
["cooldownTextDisabled"] = false,
["useCooldownModRate"] = true,
["width"] = 18,
["color"] = {
1,
1,
1,
1,
},
["config"] = {
["resources"] = {
{
["item_id"] = 2835,
["target_count"] = 60,
["item_name"] = "Rough Stone",
},
{
["item_id"] = 2840,
["target_count"] = 66,
["item_name"] = "Copper Bar",
},
{
["item_id"] = 2589,
["target_count"] = 50,
["item_name"] = "Linen Cloth",
},
{
["item_id"] = 2842,
["target_count"] = 5,
["item_name"] = "Silver Bar",
},
{
["item_id"] = 2841,
["target_count"] = 110,
["item_name"] = "Bronze Bar",
},
{
["item_id"] = 2838,
["target_count"] = 60,
["item_name"] = "Heavy Stone",
},
{
["item_id"] = 1206,
["target_count"] = 10,
["item_name"] = "Moss Agate",
},
{
["item_id"] = 2592,
["target_count"] = 60,
["item_name"] = "Wool Cloth",
},
{
["item_id"] = 2319,
["target_count"] = 15,
["item_name"] = "Medium Leather",
},
{
["item_id"] = 3859,
["target_count"] = 4,
["item_name"] = "Steel Bar",
},
{
["item_id"] = 7912,
["target_count"] = 120,
["item_name"] = "Solid Stone",
},
{
["item_id"] = 3860,
["target_count"] = 170,
["item_name"] = "Mithril Bar",
},
{
["item_id"] = 4338,
["target_count"] = 20,
["item_name"] = "Mageweave Cloth",
},
{
["item_id"] = 12365,
["target_count"] = 60,
["item_name"] = "Dense Stone",
},
{
["item_id"] = 12359,
["target_count"] = 225,
["item_name"] = "Thorium Bar",
},
{
["item_id"] = 14047,
["target_count"] = 35,
["item_name"] = "Runecloth",
},
},
},
["inverse"] = false,
["adjustedMin"] = "",
["displayIcon"] = 134063,
["cooldown"] = false,
["selfPoint"] = "CENTER",
},
["Engineering Kit Tracker"] = {
["grow"] = "DOWN",
["controlledChildren"] = {
"EngineeringKitTracker_Icon",
},
["borderBackdrop"] = "Blizzard Tooltip",
["xOffset"] = -50.56735229492188,
["yOffset"] = -50.28424072265625,
["anchorPoint"] = "TOP",
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
["radius"] = 200,
["selfPoint"] = "TOP",
["align"] = "CENTER",
["uid"] = "fj3Irg1qjIO",
["rotation"] = 0,
["sort"] = "none",
["anchorFrameFrame"] = "SUFUnitplayer",
["subRegions"] = {
},
["stagger"] = 0,
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
["useLimit"] = false,
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
["internalVersion"] = 84,
["scale"] = 1,
["centerType"] = "LR",
["border"] = false,
["borderEdge"] = "Square Full White",
["stepAngle"] = 15,
["borderSize"] = 2,
["limit"] = 5,
["space"] = 0,
["borderInset"] = 1,
["constantFactor"] = "RADIUS",
["alpha"] = 1,
["borderOffset"] = 4,
["frameStrata"] = 1,
["rowSpace"] = 1,
["id"] = "Engineering Kit Tracker",
["arcLength"] = 360,
["gridWidth"] = 5,
["anchorFrameType"] = "SELECTFRAME",
["regionType"] = "dynamicgroup",
["config"] = {
},
["authorOptions"] = {
},
["gridType"] = "RD",
["conditions"] = {
},
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
["Alchemy Kit Tracker"] = {
["grow"] = "DOWN",
["controlledChildren"] = {
"AlchemyKitTracker_Icon",
},
["borderBackdrop"] = "Blizzard Tooltip",
["authorOptions"] = {
},
["yOffset"] = -50.28424072265625,
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
["init"] = {
},
["finish"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["subeventPrefix"] = "SPELL",
["type"] = "aura2",
["spellIds"] = {
},
["subeventSuffix"] = "_CAST_START",
["unit"] = "player",
["names"] = {
},
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
["align"] = "CENTER",
["rotation"] = 0,
["config"] = {
},
["borderEdge"] = "Square Full White",
["subRegions"] = {
},
["xOffset"] = -50.56735229492188,
["anchorPoint"] = "TOP",
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
["selfPoint"] = "TOP",
["animate"] = false,
["useLimit"] = false,
["scale"] = 1,
["centerType"] = "LR",
["border"] = false,
["anchorFrameFrame"] = "SUFUnitplayer",
["stepAngle"] = 15,
["borderSize"] = 2,
["limit"] = 5,
["regionType"] = "dynamicgroup",
["uid"] = "BueZHocioUQ",
["constantFactor"] = "RADIUS",
["gridWidth"] = 5,
["borderOffset"] = 4,
["arcLength"] = 360,
["rowSpace"] = 1,
["id"] = "Alchemy Kit Tracker",
["frameStrata"] = 1,
["alpha"] = 1,
["anchorFrameType"] = "SELECTFRAME",
["sort"] = "none",
["borderInset"] = 1,
["space"] = 0,
["internalVersion"] = 84,
["conditions"] = {
},
["information"] = {
},
["stagger"] = 0,
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
["debuffType"] = "HELPFUL",
["custom_type"] = "stateupdate",
["subeventSuffix"] = "_CAST_START",
["names"] = {
},
["event"] = "Character Stats",
["use_unit"] = true,
["custom"] = "function(allstates, event)\n    wipe(allstates)\n    \n    local function get_icon(profession_name)\n        for _, p in ipairs(aura_env.config.professions) do\n            if p.name == profession_name then return p.icon_number end\n        end\n        \n    end\n    \n    local function get_skills()\n        local result = {}\n        --local icons = { [\"Herbalism\"] = 133939, [\"Mining\"] = 136025 }\n        \n        for i = 1, GetNumSkillLines() do\n            local name, _, _, rank, _, _, max_rank = GetSkillLineInfo(i)\n            local icon = get_icon(name)\n            \n            if icon then\n                table.insert(result, {\n                        name=name,\n                        icon=icon,\n                        rank=rank,\n                        max_rank=max_rank\n                })\n            end\n        end\n        \n        return result\n    end\n    \n    for i, s in ipairs(get_skills()) do\n        local state = {}\n        state.show = true\n        state.changed = true\n        state.icon = s.icon\n        state.skill = s\n        state.progressType = \"static\"\n        state.duration = 0\n        allstates[i] = state\n    end\n    \n    return true\nend",
["spellIds"] = {
},
["events"] = "SKILL_LINES_CHANGED",
["customIcon"] = "function()\n  return 133939\nend",
["check"] = "event",
["subeventPrefix"] = "SPELL",
["unit"] = "player",
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
["text_fontSize"] = 8,
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
["parent"] = "Profession Tracker",
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
["useAdjustededMin"] = false,
["regionType"] = "icon",
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
},
},
["customText"] = "function()\n  local state = aura_env.state\n  local skill = state and state.skill\n  local max_rank = skill.rank and skill.max_rank and skill.rank ~= skill.max_rank and string.format(\"/%s\", skill.max_rank) or \"\"\n  return string.format(\"%s%s\", skill.rank, max_rank)\nend",
["information"] = {
},
["conditions"] = {
},
["uid"] = "OX8x42ouGLU",
["authorOptions"] = {
{
["subOptions"] = {
{
["type"] = "input",
["useDesc"] = true,
["width"] = 1,
["desc"] = "The name of a profession (e.g. Herbalism)",
["default"] = "",
["multiline"] = false,
["name"] = "Name",
["length"] = 10,
["key"] = "name",
["useLength"] = false,
},
{
["type"] = "input",
["useDesc"] = true,
["width"] = 1,
["desc"] = "Icon number for the profession (e.g. 133939)",
["default"] = "",
["multiline"] = false,
["name"] = "Icon number",
["length"] = 10,
["key"] = "icon_number",
["useLength"] = false,
},
},
["type"] = "group",
["useDesc"] = false,
["nameSource"] = 0,
["name"] = "Professions",
["width"] = 1,
["useCollapse"] = false,
["noMerge"] = false,
["key"] = "professions",
["collapse"] = false,
["limitType"] = "none",
["groupType"] = "array",
["hideReorder"] = true,
["size"] = 10,
},
},
["cooldownTextDisabled"] = false,
["anchorFrameType"] = "SCREEN",
["alpha"] = 1,
["id"] = "ProfessionTracker_Icon",
["frameStrata"] = 1,
["useCooldownModRate"] = true,
["width"] = 18,
["zoom"] = 0,
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
["inverse"] = false,
["keepAspectRatio"] = false,
["displayIcon"] = "",
["cooldown"] = false,
["xOffset"] = 0,
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
["xOffset"] = 0,
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
["authorOptions"] = {
},
["uid"] = "d3(b3qoX5JH",
["zoom"] = 0,
["frameStrata"] = 1,
["anchorFrameType"] = "SCREEN",
["id"] = "Find Herbs",
["alpha"] = 1,
["useCooldownModRate"] = true,
["width"] = 24,
["cooldownTextDisabled"] = false,
["config"] = {
},
["inverse"] = false,
["keepAspectRatio"] = false,
["displayIcon"] = 133939,
["cooldown"] = true,
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
},
},
},
["AlchemyKitTracker_Icon"] = {
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
["custom_hide"] = "timed",
["custom_type"] = "stateupdate",
["use_unit"] = true,
["subeventPrefix"] = "SPELL",
["event"] = "Character Stats",
["names"] = {
},
["spellIds"] = {
},
["events"] = "BAG_UPDATE",
["custom"] = "function(allstates, event)\n    wipe(allstates)\n    \n    local function get_resources()\n        local result = {}\n        \n        for _, p in ipairs(aura_env.config.resources) do\n            local name, link, _, _, _, _, _, _, _, icon = GetItemInfo(p.item_id)\n            table.insert(result, {\n                    item_id = p.item_id,\n                    name = name,\n                    link = link,\n                    icon = icon,\n                    target_count = p.target_count,\n                    count = 0\n            })\n        end\n        \n        return result\n    end\n    \n    local function get_resource(resources, item_id)\n        for _, r in ipairs(resources) do\n            if r.item_id == item_id then return r end\n        end\n    end\n    \n    local function get_items()\n        local result = get_resources()\n        --local icons = { [\"Herbalism\"] = 133939, [\"Mining\"] = 136025 }\n        \n        for bag = 0, NUM_BAG_SLOTS do\n            for slot = 1, C_Container.GetContainerNumSlots(bag) do\n                local info = C_Container.GetContainerItemInfo(bag, slot)\n                \n                if info then\n                    local item_id = info.itemID\n                    local resource = get_resource(result, item_id)\n                    \n                    if resource then\n                        resource.count = resource.count + info.stackCount\n                    end \n                end\n                \n            end\n        end\n        \n        return result\n    end\n    \n    local i = 1\n    \n    for _, item in ipairs(get_items()) do\n        local state = {}\n        state.show = true\n        state.changed = true\n        state.icon = item.icon\n        state.resource = item\n        state.progressType = \"static\"\n        state.duration = 0\n        allstates[i] = state\n        i = i + 1\n    end\n    \n    return true\nend",
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
["text_fontSize"] = 10,
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
["color"] = {
1,
1,
1,
1,
},
["useAdjustededMin"] = false,
["regionType"] = "icon",
["keepAspectRatio"] = false,
["customText"] = "function()\n    local state = aura_env.state\n    local resource = state and state.resource\n    --print(DevTools_Dump(resource))\n    local resource_count = state and state.resource and state.resource.count\n    local target_count = state and state.resource.target_count    \n    local count = target_count and string.format(\"%s/%s\", resource_count, target_count) or resource_count\n    return string.format(\"%s: %s\", resource.name or \"N/A\", count)\nend",
["cooldown"] = false,
["displayIcon"] = 133939,
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
["item_id"] = 3358,
["target_count"] = 15,
["item_name"] = "Khadgar's Whisker",
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
["useCooldownModRate"] = true,
["zoom"] = 0,
["width"] = 18,
["frameStrata"] = 1,
["id"] = "AlchemyKitTracker_Icon",
["cooldownTextDisabled"] = false,
["alpha"] = 1,
["anchorFrameType"] = "SCREEN",
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
["key"] = "resources",
["width"] = 1,
["useCollapse"] = false,
["noMerge"] = false,
["name"] = "Resources to track",
["hideReorder"] = false,
["limitType"] = "none",
["groupType"] = "array",
["collapse"] = false,
["size"] = 10,
},
},
["uid"] = "Zqgd31Y8FbR",
["inverse"] = false,
["actions"] = {
["start"] = {
},
["init"] = {
},
["finish"] = {
},
},
["conditions"] = {
},
["information"] = {
},
["parent"] = "Alchemy Kit Tracker",
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
["scale"] = 1,
["anchorFrameFrame"] = "Minimap",
["border"] = false,
["yOffset"] = 20,
["regionType"] = "group",
["borderSize"] = 2,
["authorOptions"] = {
},
["borderColor"] = {
0,
0,
0,
1,
},
["uid"] = "t2A(CJA8hJw",
["borderEdge"] = "Square Full White",
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
["anchorPoint"] = "BOTTOMLEFT",
["internalVersion"] = 84,
["xOffset"] = 20,
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
["id"] = "Tracking",
["borderOffset"] = 4,
["frameStrata"] = 1,
["anchorFrameType"] = "SELECTFRAME",
["selfPoint"] = "CENTER",
["borderInset"] = 1,
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
["selfPoint"] = "RIGHT",
["align"] = "CENTER",
["stagger"] = 0,
["borderInset"] = 1,
["limit"] = 5,
["subRegions"] = {
},
["fullCircle"] = true,
["rotation"] = 0,
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
["useAnchorPerUnit"] = false,
["backdropColor"] = {
1,
1,
1,
0.5,
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
["animate"] = false,
["internalVersion"] = 84,
["scale"] = 1,
["centerType"] = "LR",
["border"] = false,
["anchorFrameFrame"] = "Minimap",
["stepAngle"] = 15,
["borderSize"] = 2,
["sort"] = "none",
["borderEdge"] = "Square Full White",
["config"] = {
},
["constantFactor"] = "RADIUS",
["alpha"] = 1,
["borderOffset"] = 4,
["arcLength"] = 360,
["frameStrata"] = 1,
["id"] = "Profession Tracker",
["rowSpace"] = 1,
["gridWidth"] = 5,
["anchorFrameType"] = "SELECTFRAME",
["gridType"] = "RD",
["uid"] = "i(V2bk6jrEX",
["regionType"] = "dynamicgroup",
["useLimit"] = false,
["conditions"] = {
},
["information"] = {
},
["authorOptions"] = {
},
},
},
["lastArchiveClear"] = 1766457156,
["minimap"] = {
["hide"] = true,
},
["historyCutoff"] = 730,
["personalRessourceDisplayFrame"] = {
["xOffset"] = -407.1359569257854,
["yOffset"] = -489.4713648726673,
},
["migrationCutoff"] = 730,
["registered"] = {
},
["lastUpgrade"] = 1746322610,
["dbVersion"] = 84,
["editor_theme"] = "Monokai",
}
