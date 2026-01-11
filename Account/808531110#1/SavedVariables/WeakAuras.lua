
WeakAurasSaved = {
["dynamicIconCache"] = {
},
["editor_tab_spaces"] = 4,
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
["authorOptions"] = {
},
["borderEdge"] = "Square Full White",
["border"] = false,
["yOffset"] = 0,
["anchorPoint"] = "CENTER",
["borderSize"] = 2,
["selfPoint"] = "CENTER",
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
["regionType"] = "group",
["internalVersion"] = 84,
["scale"] = 1,
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
["id"] = "Warrior",
["borderOffset"] = 4,
["alpha"] = 1,
["anchorFrameType"] = "SCREEN",
["uid"] = "mvzvhJ44TJO",
["borderInset"] = 1,
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
["subRegions"] = {
},
["frameStrata"] = 1,
["conditions"] = {
},
["information"] = {
},
["config"] = {
},
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
["subeventPrefix"] = "SPELL",
["unit"] = "player",
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
["duration_type"] = "seconds",
["easeStrength"] = 3,
["easeType"] = "none",
},
["main"] = {
["type"] = "none",
["duration_type"] = "seconds",
["easeStrength"] = 3,
["easeType"] = "none",
},
["finish"] = {
["type"] = "none",
["duration_type"] = "seconds",
["easeStrength"] = 3,
["easeType"] = "none",
},
},
["align"] = "CENTER",
["frameStrata"] = 1,
["stagger"] = 0,
["limit"] = 5,
["useLimit"] = false,
["subRegions"] = {
},
["gridWidth"] = 5,
["sortHybridTable"] = {
["MOTW running out"] = false,
["MOTW missing"] = false,
},
["load"] = {
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
["internalVersion"] = 84,
["backdropColor"] = {
1,
1,
1,
0.5,
},
["anchorPoint"] = "BOTTOM",
["animate"] = false,
["authorOptions"] = {
},
["scale"] = 1,
["centerType"] = "LR",
["border"] = false,
["borderEdge"] = "Square Full White",
["stepAngle"] = 15,
["borderSize"] = 2,
["sort"] = "none",
["config"] = {
},
["regionType"] = "dynamicgroup",
["constantFactor"] = "RADIUS",
["fullCircle"] = true,
["borderOffset"] = 4,
["rotation"] = 0,
["tocversion"] = 11508,
["id"] = "Main Notifications",
["selfPoint"] = "CENTER",
["alpha"] = 1,
["anchorFrameType"] = "SELECTFRAME",
["uid"] = "pb8jb71psxd",
["borderInset"] = 1,
["anchorFrameFrame"] = "SUFUnittarget",
["space"] = 2,
["conditions"] = {
},
["information"] = {
},
["arcLength"] = 360,
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
["uid"] = "7ff20rHeNhN",
["color"] = {
1,
1,
1,
1,
},
["preferToUpdate"] = false,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["authorOptions"] = {
},
["information"] = {
},
["conditions"] = {
},
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
},
},
["zoom"] = 0,
["width"] = 24,
["cooldownTextDisabled"] = false,
["alpha"] = 1,
["tocversion"] = 11508,
["id"] = "Find Minerals",
["frameStrata"] = 1,
["useCooldownModRate"] = true,
["anchorFrameType"] = "SCREEN",
["xOffset"] = 0,
["config"] = {
},
["inverse"] = false,
["keepAspectRatio"] = false,
["displayIcon"] = "136025",
["cooldown"] = true,
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
["Herbalism"] = {
["outline"] = "OUTLINE",
["color"] = {
1,
1,
1,
1,
},
["displayText"] = "%c",
["customText"] = "function()\n    local skill_name = aura_env.config.skill_name\n    --print(DevTools_Dump(aura_env.config))\n    for i = 1, GetNumSkillLines() do\n        local name, _, _, rank, _, _, maxRank = GetSkillLineInfo(i)\n        if name == aura_env.config.skill_name then\n            local c = aura_env.config.color\n            -- print(DevTools_Dump(c))\n            --print(\"updated\")\n            local hex = string.format(\"|cff%02X%02X%02X\", c[1]*255, c[2]*255, c[3]*255)\n            return string.format(\"%s: %s%s|r\", skill_name, hex, rank)\n        end\n    end\n    return string.format(\"%s: N/A\", skill_name)\nend",
["yOffset"] = 0,
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
["spellIds"] = {
},
["duration"] = "",
["event"] = "Character Stats",
["unit"] = "player",
["custom"] = "function()\n  -- print(\"trigger on\")\n  aura_env.region:Update()\n  return true\nend",
["customName"] = "",
["events"] = "SKILL_LINES_CHANGED",
["custom_type"] = "event",
["use_unit"] = true,
["names"] = {
},
["subeventPrefix"] = "SPELL",
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
["displayText_format_c_format"] = "none",
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
["fontSize"] = 10,
["shadowXOffset"] = 0,
["displayText_format_p_time_mod_rate"] = true,
["anchorFrameFrame"] = "Minimap",
["regionType"] = "text",
["wordWrap"] = "WordWrap",
["parent"] = "Skil",
["fixedWidth"] = 200,
["displayText_format_p_time_precision"] = 1,
["authorOptions"] = {
{
["type"] = "color",
["useDesc"] = false,
["key"] = "color",
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
["name"] = "Skill name",
["length"] = 10,
["default"] = "",
["useLength"] = false,
},
},
["internalVersion"] = 84,
["config"] = {
["skill_name"] = "Herbalism",
["color"] = {
0.2313725650310516,
0.658823549747467,
1,
1,
},
},
["justify"] = "CENTER",
["shadowYOffset"] = 0,
["id"] = "Herbalism",
["displayText_format_p_time_dynamic_threshold"] = 60,
["frameStrata"] = 1,
["anchorFrameType"] = "SELECTFRAME",
["subRegions"] = {
{
["type"] = "subbackground",
},
},
["uid"] = "bdH))zwTOxb",
["xOffset"] = 0,
["displayText_format_customtext_format"] = "none",
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
["scaley"] = 1,
["alpha"] = 0,
["y"] = 0,
["x"] = 0,
["colorA"] = 1,
["rotate"] = 0,
["easeStrength"] = 5,
["preset"] = "alphaPulse",
["scalex"] = 1,
},
["finish"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
},
["Mining"] = {
["outline"] = "OUTLINE",
["color"] = {
1,
1,
1,
1,
},
["displayText"] = "%c",
["customText"] = "function()\n    local skill_name = aura_env.config.skill_name\n    --print(DevTools_Dump(aura_env.config))\n    for i = 1, GetNumSkillLines() do\n        local name, _, _, rank, _, _, maxRank = GetSkillLineInfo(i)\n        if name == aura_env.config.skill_name then\n            local c = aura_env.config.color\n            -- print(DevTools_Dump(c))\n            --print(\"updated\")\n            local hex = string.format(\"|cff%02X%02X%02X\", c[1]*255, c[2]*255, c[3]*255)\n            return string.format(\"%s: %s%s|r\", skill_name, hex, rank)\n        end\n    end\n    return string.format(\"%s: N/A\", skill_name)\nend",
["yOffset"] = 0,
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
["subeventPrefix"] = "SPELL",
["duration"] = "",
["event"] = "Character Stats",
["unit"] = "player",
["names"] = {
},
["customName"] = "",
["spellIds"] = {
},
["use_unit"] = true,
["custom_type"] = "event",
["events"] = "SKILL_LINES_CHANGED",
["custom"] = "function()\n  -- print(\"trigger on\")\n  aura_env.region:Update()\n  return true\nend",
["custom_hide"] = "timed",
},
["untrigger"] = {
["custom"] = "function()\n  print(\"trigger off\")\n  return false\nend",
},
},
["disjunctive"] = "any",
["activeTriggerMode"] = -10,
},
["displayText_format_p_time_mod_rate"] = true,
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
["rotate"] = 0,
["easeStrength"] = 5,
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
["fontSize"] = 10,
["shadowXOffset"] = 0,
["displayText_format_p_format"] = "timed",
["anchorFrameFrame"] = "Minimap",
["regionType"] = "text",
["parent"] = "Skil",
["wordWrap"] = "WordWrap",
["conditions"] = {
},
["displayText_format_p_time_precision"] = 1,
["displayText_format_customtext_format"] = "none",
["xOffset"] = 0,
["uid"] = "M3k6ASBPtSo",
["justify"] = "CENTER",
["subRegions"] = {
{
["type"] = "subbackground",
},
},
["id"] = "Mining",
["displayText_format_p_time_dynamic_threshold"] = 60,
["frameStrata"] = 1,
["anchorFrameType"] = "SELECTFRAME",
["authorOptions"] = {
{
["type"] = "color",
["key"] = "color",
["useDesc"] = false,
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
["default"] = "",
["length"] = 10,
["multiline"] = false,
["useLength"] = false,
},
},
["config"] = {
["skill_name"] = "Mining",
["color"] = {
0.8078432083129883,
0.6039215922355652,
0.4666666984558106,
1,
},
},
["shadowYOffset"] = 0,
["internalVersion"] = 84,
["shadowColor"] = {
0,
0,
0,
1,
},
["fixedWidth"] = 200,
["information"] = {
},
["selfPoint"] = "TOPRIGHT",
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
["finish"] = {
},
["init"] = {
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
["unit"] = "player",
["useName"] = true,
["subeventPrefix"] = "SPELL",
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
["type"] = "none",
["duration_type"] = "seconds",
["easeStrength"] = 3,
["easeType"] = "none",
},
["main"] = {
["type"] = "none",
["duration_type"] = "seconds",
["easeStrength"] = 3,
["easeType"] = "none",
},
["finish"] = {
["type"] = "none",
["duration_type"] = "seconds",
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
["glow"] = false,
["glowType"] = "buttonOverlay",
["glowLength"] = 10,
["glowLines"] = 8,
["glowBorder"] = false,
},
},
["height"] = 46,
["load"] = {
["size"] = {
["multi"] = {
},
},
["use_zone"] = true,
["spec"] = {
["multi"] = {
},
},
["talent"] = {
["multi"] = {
},
},
["use_vehicle"] = false,
["class"] = {
["multi"] = {
},
},
["zone"] = "-Thunder Bluff,-Orgrimmar",
["use_mounted"] = false,
},
["useAdjustededMax"] = false,
["selfPoint"] = "CENTER",
["parent"] = "Main Notifications",
["useAdjustededMin"] = false,
["regionType"] = "icon",
["preferToUpdate"] = false,
["keepAspectRatio"] = false,
["cooldown"] = true,
["xOffset"] = 0,
["config"] = {
},
["alpha"] = 1,
["zoom"] = 0,
["width"] = 46,
["tocversion"] = 11508,
["id"] = "Battle Shout Missing",
["frameStrata"] = 1,
["useCooldownModRate"] = true,
["anchorFrameType"] = "SCREEN",
["cooldownTextDisabled"] = false,
["uid"] = "NaJ3hmu)AmJ",
["inverse"] = false,
["icon"] = true,
["conditions"] = {
},
["information"] = {
},
["authorOptions"] = {
},
},
["Skil"] = {
["grow"] = "DOWN",
["controlledChildren"] = {
"Herbalism",
"Mining",
},
["borderBackdrop"] = "Blizzard Tooltip",
["xOffset"] = 5,
["yOffset"] = -5,
["anchorPoint"] = "BOTTOMRIGHT",
["borderColor"] = {
0,
0,
0,
1,
},
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
["type"] = "aura2",
["subeventSuffix"] = "_CAST_START",
["event"] = "Health",
["names"] = {
},
["spellIds"] = {
},
["subeventPrefix"] = "SPELL",
["unit"] = "player",
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
},
["columnSpace"] = 1,
["radius"] = 200,
["selfPoint"] = "TOPRIGHT",
["align"] = "RIGHT",
["stagger"] = 0,
["regionType"] = "dynamicgroup",
["subRegions"] = {
},
["fullCircle"] = true,
["authorOptions"] = {
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
["rotation"] = 0,
["scale"] = 1,
["centerType"] = "LR",
["border"] = false,
["anchorFrameFrame"] = "Minimap",
["stepAngle"] = 15,
["borderSize"] = 2,
["sort"] = "none",
["internalVersion"] = 84,
["config"] = {
},
["anchorFrameParent"] = true,
["constantFactor"] = "RADIUS",
["useLimit"] = false,
["borderOffset"] = 4,
["alpha"] = 1,
["frameStrata"] = 1,
["id"] = "Skil",
["rowSpace"] = 1,
["gridWidth"] = 5,
["anchorFrameType"] = "SELECTFRAME",
["uid"] = "JnngGD15X)g",
["borderInset"] = 1,
["limit"] = 5,
["borderEdge"] = "Square Full White",
["conditions"] = {
},
["information"] = {
},
["arcLength"] = 360,
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
["finish"] = {
},
["init"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["rem"] = "10",
["subeventSuffix"] = "_CAST_START",
["useRem"] = true,
["matchesShowOn"] = "showOnActive",
["event"] = "Health",
["names"] = {
},
["useName"] = true,
["type"] = "aura2",
["spellIds"] = {
},
["auranames"] = {
"Battle Shout",
},
["remOperator"] = "<=",
["subeventPrefix"] = "SPELL",
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
["type"] = "none",
["duration_type"] = "seconds",
["easeStrength"] = 3,
["easeType"] = "none",
},
["main"] = {
["type"] = "none",
["duration_type"] = "seconds",
["easeStrength"] = 3,
["easeType"] = "none",
},
["finish"] = {
["type"] = "none",
["duration_type"] = "seconds",
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
["glow"] = false,
["glowType"] = "buttonOverlay",
["glowLength"] = 10,
["glowLines"] = 8,
["glowBorder"] = false,
},
},
["height"] = 46,
["load"] = {
["size"] = {
["multi"] = {
},
},
["use_zone"] = true,
["spec"] = {
["multi"] = {
},
},
["talent"] = {
["multi"] = {
},
},
["use_vehicle"] = false,
["class"] = {
["multi"] = {
},
},
["zone"] = "-Thunder Bluff,-Orgrimmar",
["use_mounted"] = false,
},
["useAdjustededMax"] = false,
["authorOptions"] = {
},
["selfPoint"] = "CENTER",
["useAdjustededMin"] = false,
["regionType"] = "icon",
["parent"] = "Main Notifications",
["icon"] = true,
["cooldown"] = true,
["keepAspectRatio"] = false,
["config"] = {
},
["zoom"] = 0,
["cooldownTextDisabled"] = false,
["width"] = 46,
["tocversion"] = 11508,
["id"] = "Battle Shout running out",
["frameStrata"] = 1,
["useCooldownModRate"] = true,
["anchorFrameType"] = "SCREEN",
["alpha"] = 1,
["uid"] = "dJKhBnYEhoY",
["inverse"] = false,
["preferToUpdate"] = false,
["conditions"] = {
},
["information"] = {
},
["xOffset"] = 0,
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
["event"] = "Health",
["names"] = {
},
["spellIds"] = {
},
["subeventPrefix"] = "SPELL",
["unit"] = "player",
["debuffType"] = "HELPFUL",
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
["uid"] = "t2A(CJA8hJw",
["tocversion"] = 11508,
["id"] = "Tracking",
["alpha"] = 1,
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
["borderInset"] = 1,
["config"] = {
},
["anchorFrameFrame"] = "Minimap",
["conditions"] = {
},
["information"] = {
},
["xOffset"] = 20,
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
["init"] = {
},
["finish"] = {
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
["fontSize"] = 12,
["shadowXOffset"] = 1,
["regionType"] = "text",
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
["displayText_format_p_time_legacy_floor"] = false,
["displayText_format_p_time_precision"] = 1,
["fixedWidth"] = 200,
["parent"] = "Warrior",
["color"] = {
1,
1,
1,
1,
},
["justify"] = "LEFT",
["xOffset"] = 0,
["id"] = "Interrupted",
["uid"] = "yc0a(Q4LTPA",
["frameStrata"] = 1,
["anchorFrameType"] = "SCREEN",
["yOffset"] = 0,
["config"] = {
},
["wordWrap"] = "WordWrap",
["displayText_format_p_time_dynamic_threshold"] = 60,
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
["displayText_format_p_time_mod_rate"] = true,
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
["init"] = {
},
["finish"] = {
},
},
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
["xOffset"] = 0,
["progressSource"] = {
-1,
"",
},
["useAdjustededMin"] = false,
["regionType"] = "icon",
["authorOptions"] = {
},
["cooldown"] = true,
["displayIcon"] = 133939,
["preferToUpdate"] = false,
["zoom"] = 0,
["width"] = 24,
["cooldownTextDisabled"] = false,
["alpha"] = 1,
["tocversion"] = 11508,
["id"] = "Find Herbs",
["useCooldownModRate"] = true,
["frameStrata"] = 1,
["anchorFrameType"] = "SCREEN",
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
["uid"] = "d3(b3qoX5JH",
["inverse"] = false,
["icon"] = true,
["conditions"] = {
},
["information"] = {
},
["color"] = {
1,
1,
1,
1,
},
},
},
["features"] = {
},
["login_squelch_time"] = 10,
["lastArchiveClear"] = 1766269811,
["minimap"] = {
["hide"] = true,
},
["historyCutoff"] = 730,
["dbVersion"] = 84,
["migrationCutoff"] = 730,
["registered"] = {
},
["editor_font_size"] = 12,
["lastUpgrade"] = 1746322610,
["editor_theme"] = "Monokai",
}
