
WeakAurasSaved = {
["dynamicIconCache"] = {
},
["editor_tab_spaces"] = 4,
["editor_font_size"] = 12,
["lastUpgrade"] = 1746322610,
["lastArchiveClear"] = 1756442421,
["minimap"] = {
["hide"] = true,
},
["historyCutoff"] = 730,
["dbVersion"] = 84,
["migrationCutoff"] = 730,
["features"] = {
},
["registered"] = {
},
["login_squelch_time"] = 10,
["displays"] = {
["Main Notifications"] = {
["grow"] = "HORIZONTAL",
["controlledChildren"] = {
"MOTW missing",
"Thorns missing",
"MOTW running out",
"Thorns running out",
},
["borderBackdrop"] = "Blizzard Tooltip",
["xOffset"] = 0,
["yOffset"] = -150,
["anchorPoint"] = "BOTTOM",
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
["selfPoint"] = "CENTER",
["align"] = "CENTER",
["stagger"] = 0,
["limit"] = 5,
["subRegions"] = {
},
["borderInset"] = 1,
["gridType"] = "RD",
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
["internalVersion"] = 84,
["animate"] = false,
["useLimit"] = false,
["scale"] = 1,
["centerType"] = "LR",
["border"] = false,
["borderEdge"] = "Square Full White",
["regionType"] = "dynamicgroup",
["borderSize"] = 2,
["sort"] = "none",
["authorOptions"] = {
},
["anchorFrameFrame"] = "SUFUnittarget",
["constantFactor"] = "RADIUS",
["arcLength"] = 360,
["borderOffset"] = 4,
["gridWidth"] = 5,
["rowSpace"] = 1,
["id"] = "Main Notifications",
["frameStrata"] = 1,
["alpha"] = 1,
["anchorFrameType"] = "SELECTFRAME",
["config"] = {
},
["uid"] = "pb8jb71psxd",
["stepAngle"] = 15,
["rotation"] = 0,
["conditions"] = {
},
["information"] = {
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
},
["MOTW running out"] = {
["iconSource"] = -1,
["parent"] = "Main Notifications",
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
["auranames"] = {
"Mark of the Wild",
"Gift of the Wild",
},
["debuffType"] = "HELPFUL",
["matchesShowOn"] = "showOnActive",
["event"] = "Health",
["subeventPrefix"] = "SPELL",
["unit"] = "player",
["names"] = {
},
["spellIds"] = {
},
["subeventSuffix"] = "_CAST_START",
["remOperator"] = "<=",
["rem"] = "20",
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
["selfPoint"] = "CENTER",
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
["height"] = 46,
["load"] = {
["use_mounted"] = false,
["use_zone"] = true,
["talent"] = {
["multi"] = {
},
},
["zone"] = "-Thunder Bluff",
["use_vehicle"] = false,
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
["information"] = {
},
["keepAspectRatio"] = false,
["xOffset"] = 0,
["authorOptions"] = {
},
["zoom"] = 0,
["cooldownTextDisabled"] = false,
["uid"] = "dJKhBnYEhoY",
["alpha"] = 1,
["id"] = "MOTW running out",
["anchorFrameType"] = "SCREEN",
["frameStrata"] = 1,
["width"] = 46,
["useCooldownModRate"] = true,
["config"] = {
},
["inverse"] = false,
["color"] = {
1,
1,
1,
1,
},
["conditions"] = {
},
["cooldown"] = true,
["icon"] = true,
},
["Thorns running out"] = {
["iconSource"] = -1,
["xOffset"] = 0,
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
["useName"] = true,
["auranames"] = {
"Thorns",
},
["useRem"] = true,
["matchesShowOn"] = "showOnActive",
["event"] = "Health",
["subeventPrefix"] = "SPELL",
["type"] = "aura2",
["rem"] = "15",
["spellIds"] = {
},
["subeventSuffix"] = "_CAST_START",
["remOperator"] = "<=",
["names"] = {
},
["unit"] = "player",
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
["height"] = 46,
["load"] = {
["use_mounted"] = false,
["use_zone"] = true,
["talent"] = {
["multi"] = {
},
},
["zone"] = "-Thunder Bluff",
["use_vehicle"] = false,
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
["useAdjustededMin"] = false,
["regionType"] = "icon",
["color"] = {
1,
1,
1,
1,
},
["cooldown"] = true,
["progressSource"] = {
-1,
"",
},
["icon"] = true,
["parent"] = "Main Notifications",
["cooldownTextDisabled"] = false,
["zoom"] = 0,
["config"] = {
},
["useCooldownModRate"] = true,
["id"] = "Thorns running out",
["width"] = 46,
["alpha"] = 1,
["anchorFrameType"] = "SCREEN",
["frameStrata"] = 1,
["uid"] = "GBiNLrJQvlq",
["inverse"] = false,
["authorOptions"] = {
},
["conditions"] = {
},
["information"] = {
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
},
["Thorns missing"] = {
["iconSource"] = -1,
["authorOptions"] = {
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
["auranames"] = {
"Thorns",
},
["matchesShowOn"] = "showOnMissing",
["event"] = "Health",
["subeventPrefix"] = "SPELL",
["spellIds"] = {
},
["subeventSuffix"] = "_CAST_START",
["unit"] = "player",
["names"] = {
},
["useName"] = true,
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
["height"] = 46,
["load"] = {
["use_mounted"] = false,
["use_zone"] = true,
["talent"] = {
["multi"] = {
},
},
["zone"] = "-Thunder Bluff",
["use_vehicle"] = false,
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
["useAdjustededMin"] = false,
["regionType"] = "icon",
["selfPoint"] = "CENTER",
["information"] = {
},
["parent"] = "Main Notifications",
["icon"] = true,
["color"] = {
1,
1,
1,
1,
},
["zoom"] = 0,
["cooldownTextDisabled"] = false,
["uid"] = "4Ocpk8tyPKN",
["alpha"] = 1,
["id"] = "Thorns missing",
["anchorFrameType"] = "SCREEN",
["frameStrata"] = 1,
["width"] = 46,
["useCooldownModRate"] = true,
["config"] = {
},
["inverse"] = false,
["keepAspectRatio"] = false,
["conditions"] = {
},
["cooldown"] = true,
["xOffset"] = 0,
},
["MOTW missing"] = {
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
["type"] = "aura2",
["subeventSuffix"] = "_CAST_START",
["matchesShowOn"] = "showOnMissing",
["event"] = "Health",
["subeventPrefix"] = "SPELL",
["spellIds"] = {
},
["auranames"] = {
"Mark of the Wild",
"Gift of the Wild",
},
["useName"] = true,
["names"] = {
},
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
["height"] = 46,
["load"] = {
["use_mounted"] = false,
["use_zone"] = true,
["talent"] = {
["multi"] = {
},
},
["zone"] = "-Thunder Bluff",
["use_vehicle"] = false,
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
["useAdjustededMin"] = false,
["regionType"] = "icon",
["xOffset"] = 0,
["cooldown"] = true,
["actions"] = {
["start"] = {
},
["init"] = {
},
["finish"] = {
},
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
["keepAspectRatio"] = false,
["cooldownTextDisabled"] = false,
["zoom"] = 0,
["config"] = {
},
["frameStrata"] = 1,
["id"] = "MOTW missing",
["width"] = 46,
["useCooldownModRate"] = true,
["anchorFrameType"] = "SCREEN",
["alpha"] = 1,
["uid"] = "NaJ3hmu)AmJ",
["inverse"] = false,
["authorOptions"] = {
},
["conditions"] = {
},
["information"] = {
},
["parent"] = "Main Notifications",
},
},
}
