
WeakAurasSaved = {
["dynamicIconCache"] = {
},
["editor_tab_spaces"] = 4,
["editor_font_size"] = 12,
["registered"] = {
},
["displays"] = {
["Skill tracking"] = {
["grow"] = "DOWN",
["controlledChildren"] = {
"ST_ProfessionIcon",
},
["borderBackdrop"] = "Blizzard Tooltip",
["xOffset"] = 242.8150177001953,
["yOffset"] = -146.148193359375,
["anchorPoint"] = "TOPLEFT",
["borderColor"] = {
0,
0,
0,
1,
},
["space"] = 2,
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
["selfPoint"] = "TOP",
["align"] = "CENTER",
["stagger"] = 0,
["limit"] = 5,
["subRegions"] = {
},
["borderInset"] = 1,
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
["gridType"] = "RD",
["backdropColor"] = {
1,
1,
1,
0.5,
},
["internalVersion"] = 84,
["animate"] = false,
["rotation"] = 0,
["scale"] = 1,
["centerType"] = "LR",
["border"] = false,
["borderEdge"] = "Square Full White",
["regionType"] = "dynamicgroup",
["borderSize"] = 2,
["sort"] = "none",
["useLimit"] = false,
["authorOptions"] = {
},
["constantFactor"] = "RADIUS",
["arcLength"] = 360,
["borderOffset"] = 4,
["gridWidth"] = 5,
["rowSpace"] = 1,
["id"] = "Skill tracking",
["frameStrata"] = 1,
["alpha"] = 1,
["anchorFrameType"] = "SCREEN",
["uid"] = "i(V2bk6jrEX",
["config"] = {
},
["stepAngle"] = 15,
["fullCircle"] = true,
["conditions"] = {
},
["information"] = {
},
["useAnchorPerUnit"] = false,
},
["Herbalism"] = {
["outline"] = "OUTLINE",
["parent"] = "Skil",
["displayText"] = "%c",
["customText"] = "function()\n    local skill_name = aura_env.config.skill_name\n    --print(DevTools_Dump(aura_env.config))\n    for i = 1, GetNumSkillLines() do\n        local name, _, _, rank, _, _, maxRank = GetSkillLineInfo(i)\n        if name == aura_env.config.skill_name then\n            local c = aura_env.config.color\n            -- print(DevTools_Dump(c))\n            --print(\"updated\")\n            local hex = string.format(\"|cff%02X%02X%02X\", c[1]*255, c[2]*255, c[3]*255)\n            return string.format(\"%s: %s%s|r\", skill_name, hex, rank)\n        end\n    end\n    return string.format(\"%s: N/A\", skill_name)\nend",
["shadowYOffset"] = 0,
["anchorPoint"] = "BOTTOMRIGHT",
["displayText_format_p_time_format"] = 0,
["customTextUpdate"] = "event",
["automaticWidth"] = "Auto",
["actions"] = {
["start"] = {
},
["init"] = {
["do_custom"] = false,
["custom"] = "",
},
["finish"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["type"] = "custom",
["custom_hide"] = "timed",
["subeventSuffix"] = "_CAST_START",
["custom"] = "function()\n  -- print(\"trigger on\")\n  aura_env.region:Update()\n  return true\nend",
["duration"] = "",
["event"] = "Character Stats",
["subeventPrefix"] = "SPELL",
["events"] = "SKILL_LINES_CHANGED",
["customName"] = "",
["spellIds"] = {
},
["custom_type"] = "event",
["use_unit"] = true,
["names"] = {
},
["unit"] = "player",
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
["custom"] = "function()\n  print(\"trigger off\")\n  return false\nend",
},
},
["disjunctive"] = "any",
["activeTriggerMode"] = -10,
},
["displayText_format_p_format"] = "timed",
["displayText_format_p_time_legacy_floor"] = false,
["selfPoint"] = "TOPRIGHT",
["font"] = "2002",
["subRegions"] = {
{
["type"] = "subbackground",
},
},
["load"] = {
["use_never"] = false,
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
["fontSize"] = 10,
["yOffset"] = 0,
["shadowXOffset"] = 0,
["xOffset"] = 0,
["anchorFrameFrame"] = "Minimap",
["regionType"] = "text",
["displayText_format_p_time_mod_rate"] = true,
["fixedWidth"] = 200,
["wordWrap"] = "WordWrap",
["animation"] = {
["start"] = {
["type"] = "preset",
["easeType"] = "none",
["duration_type"] = "seconds",
["preset"] = "fade",
["easeStrength"] = 3,
},
["main"] = {
["colorR"] = 1,
["duration_type"] = "seconds",
["alphaType"] = "hide",
["colorB"] = 1,
["colorG"] = 1,
["alphaFunc"] = "function()\n    return 0\nend\n",
["use_alpha"] = false,
["type"] = "none",
["easeType"] = "easeIn",
["preset"] = "alphaPulse",
["alpha"] = 0,
["y"] = 0,
["x"] = 0,
["colorA"] = 1,
["easeStrength"] = 5,
["rotate"] = 0,
["scaley"] = 1,
["scalex"] = 1,
},
["finish"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["displayText_format_p_time_precision"] = 1,
["config"] = {
["skill_name"] = "Herbalism",
["color"] = {
0.2313725650310516,
0.658823549747467,
1,
1,
},
},
["color"] = {
1,
1,
1,
1,
},
["displayText_format_p_time_dynamic_threshold"] = 60,
["justify"] = "CENTER",
["tocversion"] = 11508,
["id"] = "Herbalism",
["authorOptions"] = {
{
["type"] = "color",
["key"] = "color",
["useDesc"] = false,
["name"] = "Color",
["default"] = {
1,
1,
1,
1,
},
["width"] = 1,
},
{
["type"] = "input",
["useDesc"] = false,
["width"] = 1,
["key"] = "skill_name",
["multiline"] = false,
["default"] = "",
["length"] = 10,
["name"] = "Skill name",
["useLength"] = false,
},
},
["frameStrata"] = 1,
["anchorFrameType"] = "SELECTFRAME",
["displayText_format_customtext_format"] = "none",
["uid"] = "bdH))zwTOxb",
["displayText_format_c_format"] = "none",
["preferToUpdate"] = false,
["shadowColor"] = {
0,
0,
0,
1,
},
["conditions"] = {
},
["information"] = {
},
["internalVersion"] = 84,
},
["Skil"] = {
["arcLength"] = 360,
["controlledChildren"] = {
"Herbalism",
"Mining",
},
["borderBackdrop"] = "Blizzard Tooltip",
["xOffset"] = 5,
["preferToUpdate"] = false,
["yOffset"] = -5,
["anchorPoint"] = "BOTTOMRIGHT",
["fullCircle"] = true,
["space"] = 3,
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
["internalVersion"] = 84,
["selfPoint"] = "TOPRIGHT",
["align"] = "RIGHT",
["alpha"] = 1,
["rotation"] = 0,
["radius"] = 200,
["stagger"] = 0,
["subRegions"] = {
},
["sortHybridTable"] = {
["Herbalism"] = false,
["Mining"] = false,
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
["gridType"] = "RD",
["backdropColor"] = {
1,
1,
1,
0.5,
},
["authorOptions"] = {
},
["animate"] = false,
["config"] = {
},
["scale"] = 1,
["centerType"] = "LR",
["border"] = false,
["borderEdge"] = "Square Full White",
["regionType"] = "dynamicgroup",
["borderSize"] = 2,
["sort"] = "none",
["stepAngle"] = 15,
["anchorFrameFrame"] = "Minimap",
["anchorFrameParent"] = true,
["constantFactor"] = "RADIUS",
["useLimit"] = false,
["borderOffset"] = 4,
["frameStrata"] = 1,
["tocversion"] = 11508,
["id"] = "Skil",
["uid"] = "JnngGD15X)g",
["gridWidth"] = 5,
["anchorFrameType"] = "SELECTFRAME",
["limit"] = 5,
["borderInset"] = 1,
["grow"] = "DOWN",
["borderColor"] = {
0,
0,
0,
1,
},
["conditions"] = {
},
["information"] = {
},
["rowSpace"] = 1,
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
["custom"] = "function()\n  return GetTrackingTexture() == 136025\nend",
["names"] = {
},
["custom_type"] = "event",
["spellIds"] = {
},
["events"] = "MINIMAP_UPDATE_TRACKING,PLAYER_ENTERING_WORLD",
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
["keepAspectRatio"] = false,
["useAdjustededMin"] = false,
["regionType"] = "icon",
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
["alpha"] = 1,
["width"] = 24,
["useCooldownModRate"] = true,
["config"] = {
},
["inverse"] = false,
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
},
},
["displayIcon"] = "136025",
["cooldown"] = true,
["parent"] = "Tracking",
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
["spellIds"] = {
},
["custom"] = "function()\n  return GetTrackingTexture() == 133939\nend",
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
["displayIcon"] = 133939,
["keepAspectRatio"] = false,
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
["frameStrata"] = 1,
["anchorFrameType"] = "SCREEN",
["alpha"] = 1,
["uid"] = "d3(b3qoX5JH",
["inverse"] = false,
["xOffset"] = 0,
["conditions"] = {
},
["information"] = {
},
["parent"] = "Tracking",
},
["ST_ProfessionIcon"] = {
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
["names"] = {
},
["use_unit"] = true,
["event"] = "Character Stats",
["unit"] = "player",
["spellIds"] = {
},
["events"] = "SKILL_LINES_CHANGED",
["custom"] = "function(allstates, event)\n    wipe(allstates)\n    \n    local function get_skills()\n        local result = {}\n        local icons = { [\"Herbalism\"] = 133939, [\"Mining\"] = 133939 }\n        \n        for i = 1, GetNumSkillLines() do\n            local name, _, _, rank, _, _, max_rank = GetSkillLevelInfo(i)\n            local icon = icons[name]\n            \n            if icon then\n                table.insert(result, {\n                        name=name,\n                        icon=icon,\n                        rank=rank,\n                        max_rank=max_rank\n                })\n            end\n        end\n        \n        return result\n    end\n    \n    for i, s in ipairs(get_skills()) do\n        local state = {}\n        state.show = true\n        state.changed = true\n        state.icon = s.icon\n        state.skill = s\n        state.progressType = \"static\"\n        state.duration = 0\n        allstates[i] = state\n    end\n    \n    return true\nend",
["customIcon"] = "function()\n  return 133939\nend",
["check"] = "event",
["subeventPrefix"] = "SPELL",
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
["actions"] = {
["start"] = {
},
["init"] = {
},
["finish"] = {
},
},
["keepAspectRatio"] = false,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["customText"] = "function()\n  local state = aura_env.state\n  return state and state.skill_value or \"N/A\"\nend",
["xOffset"] = 0,
["cooldown"] = false,
["displayIcon"] = "",
["config"] = {
},
["zoom"] = 0,
["cooldownTextDisabled"] = false,
["width"] = 18,
["useCooldownModRate"] = true,
["id"] = "ST_ProfessionIcon",
["frameStrata"] = 1,
["alpha"] = 1,
["anchorFrameType"] = "SCREEN",
["authorOptions"] = {
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
["parent"] = "Skill tracking",
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
["Mining"] = {
["outline"] = "OUTLINE",
["parent"] = "Skil",
["displayText"] = "%c",
["customText"] = "function()\n    local skill_name = aura_env.config.skill_name\n    --print(DevTools_Dump(aura_env.config))\n    for i = 1, GetNumSkillLines() do\n        local name, _, _, rank, _, _, maxRank = GetSkillLineInfo(i)\n        if name == aura_env.config.skill_name then\n            local c = aura_env.config.color\n            -- print(DevTools_Dump(c))\n            --print(\"updated\")\n            local hex = string.format(\"|cff%02X%02X%02X\", c[1]*255, c[2]*255, c[3]*255)\n            return string.format(\"%s: %s%s|r\", skill_name, hex, rank)\n        end\n    end\n    return string.format(\"%s: N/A\", skill_name)\nend",
["shadowYOffset"] = 0,
["anchorPoint"] = "BOTTOMRIGHT",
["displayText_format_p_time_format"] = 0,
["customTextUpdate"] = "event",
["automaticWidth"] = "Auto",
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
["do_custom"] = false,
["custom"] = "",
},
},
["triggers"] = {
{
["trigger"] = {
["type"] = "custom",
["debuffType"] = "HELPFUL",
["subeventSuffix"] = "_CAST_START",
["unit"] = "player",
["duration"] = "",
["event"] = "Character Stats",
["subeventPrefix"] = "SPELL",
["names"] = {
},
["customName"] = "",
["custom"] = "function()\n  -- print(\"trigger on\")\n  aura_env.region:Update()\n  return true\nend",
["use_unit"] = true,
["custom_type"] = "event",
["spellIds"] = {
},
["events"] = "SKILL_LINES_CHANGED",
["custom_hide"] = "timed",
},
["untrigger"] = {
["custom"] = "function()\n  print(\"trigger off\")\n  return false\nend",
},
},
["disjunctive"] = "any",
["activeTriggerMode"] = -10,
},
["displayText_format_p_format"] = "timed",
["displayText_format_p_time_legacy_floor"] = false,
["animation"] = {
["start"] = {
["type"] = "preset",
["easeType"] = "none",
["duration_type"] = "seconds",
["easeStrength"] = 3,
["preset"] = "fade",
},
["main"] = {
["colorR"] = 1,
["duration_type"] = "seconds",
["alphaType"] = "hide",
["colorB"] = 1,
["colorG"] = 1,
["alphaFunc"] = "function()\n    return 0\nend\n",
["use_alpha"] = false,
["type"] = "none",
["easeType"] = "easeIn",
["scaley"] = 1,
["alpha"] = 0,
["y"] = 0,
["x"] = 0,
["scalex"] = 1,
["preset"] = "alphaPulse",
["easeStrength"] = 5,
["rotate"] = 0,
["colorA"] = 1,
},
["finish"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["font"] = "2002",
["displayText_format_c_format"] = "none",
["load"] = {
["use_never"] = false,
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
["fontSize"] = 10,
["subRegions"] = {
{
["type"] = "subbackground",
},
},
["shadowXOffset"] = 0,
["authorOptions"] = {
{
["type"] = "color",
["useDesc"] = false,
["key"] = "color",
["default"] = {
1,
1,
1,
1,
},
["name"] = "Color",
["width"] = 1,
},
{
["type"] = "input",
["useDesc"] = false,
["width"] = 1,
["key"] = "skill_name",
["name"] = "Skill name",
["multiline"] = false,
["length"] = 10,
["default"] = "",
["useLength"] = false,
},
},
["anchorFrameFrame"] = "Minimap",
["regionType"] = "text",
["yOffset"] = 0,
["conditions"] = {
},
["wordWrap"] = "WordWrap",
["selfPoint"] = "TOPRIGHT",
["displayText_format_p_time_precision"] = 1,
["uid"] = "M3k6ASBPtSo",
["color"] = {
1,
1,
1,
1,
},
["displayText_format_p_time_dynamic_threshold"] = 60,
["justify"] = "CENTER",
["tocversion"] = 11508,
["id"] = "Mining",
["displayText_format_customtext_format"] = "none",
["frameStrata"] = 1,
["anchorFrameType"] = "SELECTFRAME",
["internalVersion"] = 84,
["config"] = {
["skill_name"] = "Mining",
["color"] = {
0.8078432083129883,
0.6039215922355652,
0.4666666984558106,
1,
},
},
["xOffset"] = 0,
["preferToUpdate"] = false,
["shadowColor"] = {
0,
0,
0,
1,
},
["fixedWidth"] = 200,
["information"] = {
},
["displayText_format_p_time_mod_rate"] = true,
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
