
WeakAurasSaved = {
	["dynamicIconCache"] = {
	},
	["migrationCutoff"] = 730,
	["editor_tab_spaces"] = 4,
	["login_squelch_time"] = 10,
	["registered"] = {
	},
	["features"] = {
	},
	["minimap"] = {
		["hide"] = true,
	},
	["displays"] = {
		["Main Notifications"] = {
			["border"] = false,
			["sort"] = "none",
			["columnSpace"] = 1,
			["gridType"] = "RD",
			["borderColor"] = {
				[1] = 0,
				[2] = 0,
				[3] = 0,
				[4] = 1,
			},
			["frameStrata"] = 1,
			["radius"] = 200,
			["triggers"] = {
				[1] = {
					["untrigger"] = {
					},
					["trigger"] = {
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["unit"] = "player",
						["spellIds"] = {
						},
						["type"] = "aura2",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["subeventSuffix"] = "_CAST_START",
					},
				},
			},
			["borderSize"] = 2,
			["regionType"] = "dynamicgroup",
			["rowSpace"] = 1,
			["internalVersion"] = 84,
			["conditions"] = {
			},
			["information"] = {
			},
			["actions"] = {
				["finish"] = {
				},
				["init"] = {
				},
				["start"] = {
				},
			},
			["subRegions"] = {
			},
			["stagger"] = 0,
			["xOffset"] = 0,
			["tocversion"] = 11508,
			["id"] = "Main Notifications",
			["animation"] = {
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
				},
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
				},
			},
			["borderOffset"] = 4,
			["limit"] = 5,
			["authorOptions"] = {
			},
			["centerType"] = "LR",
			["config"] = {
			},
			["uid"] = "pb8jb71psxd",
			["animate"] = false,
			["sortHybridTable"] = {
				["MOTW running out"] = false,
				["MOTW missing"] = false,
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["anchorPoint"] = "BOTTOM",
			["fullCircle"] = true,
			["rotation"] = 0,
			["selfPoint"] = "CENTER",
			["borderInset"] = 1,
			["anchorFrameType"] = "SELECTFRAME",
			["space"] = 2,
			["load"] = {
				["class"] = {
					["multi"] = {
					},
				},
				["talent"] = {
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
			["useLimit"] = false,
			["gridWidth"] = 5,
			["preferToUpdate"] = false,
			["align"] = "CENTER",
			["stepAngle"] = 15,
			["grow"] = "HORIZONTAL",
			["anchorFrameFrame"] = "SUFUnittarget",
			["yOffset"] = -150,
			["controlledChildren"] = {
				[1] = "Battle Shout Missing",
				[2] = "Battle Shout running out",
			},
			["backdropColor"] = {
				[1] = 1,
				[2] = 1,
				[3] = 1,
				[4] = 0.5,
			},
			["scale"] = 1,
			["alpha"] = 1,
			["constantFactor"] = "RADIUS",
			["borderEdge"] = "Square Full White",
			["arcLength"] = 360,
		},
		["Battle Shout running out"] = {
			["cooldownTextDisabled"] = false,
			["iconSource"] = -1,
			["zoom"] = 0,
			["adjustedMax"] = "",
			["cooldown"] = true,
			["cooldownEdge"] = false,
			["frameStrata"] = 1,
			["config"] = {
			},
			["triggers"] = {
				[1] = {
					["untrigger"] = {
					},
					["trigger"] = {
						["names"] = {
						},
						["matchesShowOn"] = "showOnActive",
						["rem"] = "10",
						["type"] = "aura2",
						["useName"] = true,
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["useRem"] = true,
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["remOperator"] = "<=",
						["auranames"] = {
							[1] = "Battle Shout",
						},
					},
				},
				["activeTriggerMode"] = -10,
			},
			["conditions"] = {
			},
			["regionType"] = "icon",
			["useCooldownModRate"] = true,
			["information"] = {
			},
			["actions"] = {
				["finish"] = {
				},
				["init"] = {
				},
				["start"] = {
				},
			},
			["useAdjustededMax"] = false,
			["color"] = {
				[1] = 1,
				[2] = 1,
				[3] = 1,
				[4] = 1,
			},
			["tocversion"] = 11508,
			["id"] = "Battle Shout running out",
			["animation"] = {
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
				},
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
				},
			},
			["progressSource"] = {
				[1] = -1,
				[2] = "",
			},
			["cooldownSwipe"] = true,
			["inverse"] = false,
			["parent"] = "Main Notifications",
			["internalVersion"] = 84,
			["useAdjustededMin"] = false,
			["width"] = 46,
			["anchorFrameType"] = "SCREEN",
			["load"] = {
				["class"] = {
					["multi"] = {
					},
				},
				["use_vehicle"] = false,
				["zone"] = "-Thunder Bluff,-Orgrimmar",
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_mounted"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["use_zone"] = true,
			},
			["anchorPoint"] = "CENTER",
			["alpha"] = 1,
			["adjustedMin"] = "",
			["desaturate"] = true,
			["uid"] = "dJKhBnYEhoY",
			["keepAspectRatio"] = false,
			["yOffset"] = 0,
			["authorOptions"] = {
			},
			["subRegions"] = {
				[1] = {
					["type"] = "subbackground",
				},
				[2] = {
					["text_shadowYOffset"] = 0,
					["anchor_point"] = "INNER_BOTTOMRIGHT",
					["text_justify"] = "CENTER",
					["type"] = "subtext",
					["text_fixedWidth"] = 64,
					["rotateText"] = "NONE",
					["text_fontSize"] = 12,
					["text_text"] = "%s",
					["text_text_format_s_format"] = "none",
					["anchorXOffset"] = 0,
					["text_font"] = "Friz Quadrata TT",
					["anchorYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_shadowColor"] = {
						[1] = 0,
						[2] = 0,
						[3] = 0,
						[4] = 1,
					},
					["text_visible"] = true,
					["text_selfPoint"] = "AUTO",
					["text_wordWrap"] = "WordWrap",
					["text_color"] = {
						[1] = 1,
						[2] = 1,
						[3] = 1,
						[4] = 1,
					},
					["text_shadowXOffset"] = 0,
					["text_automaticWidth"] = "Auto",
				},
				[3] = {
					["glowLines"] = 8,
					["glowDuration"] = 1,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowYOffset"] = 0,
					["glowFrequency"] = 0.25,
					["glow"] = false,
					["glowScale"] = 1,
					["glowType"] = "buttonOverlay",
					["glowThickness"] = 1,
					["glowLength"] = 10,
					["glowColor"] = {
						[1] = 1,
						[2] = 1,
						[3] = 1,
						[4] = 1,
					},
					["glowBorder"] = false,
					["glowXOffset"] = 0,
				},
			},
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["height"] = 46,
			["icon"] = true,
			["selfPoint"] = "CENTER",
		},
		["Battle Shout Missing"] = {
			["cooldownTextDisabled"] = false,
			["iconSource"] = -1,
			["zoom"] = 0,
			["adjustedMax"] = "",
			["cooldown"] = true,
			["cooldownEdge"] = false,
			["frameStrata"] = 1,
			["config"] = {
			},
			["triggers"] = {
				[1] = {
					["untrigger"] = {
					},
					["trigger"] = {
						["names"] = {
						},
						["matchesShowOn"] = "showOnMissing",
						["spellIds"] = {
						},
						["type"] = "aura2",
						["useName"] = true,
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["auranames"] = {
							[1] = "Battle Shout",
						},
					},
				},
				["activeTriggerMode"] = -10,
			},
			["conditions"] = {
			},
			["regionType"] = "icon",
			["useCooldownModRate"] = true,
			["information"] = {
			},
			["actions"] = {
				["finish"] = {
				},
				["init"] = {
				},
				["start"] = {
				},
			},
			["useAdjustededMax"] = false,
			["color"] = {
				[1] = 1,
				[2] = 1,
				[3] = 1,
				[4] = 1,
			},
			["tocversion"] = 11508,
			["id"] = "Battle Shout Missing",
			["animation"] = {
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
				},
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
				},
			},
			["progressSource"] = {
				[1] = -1,
				[2] = "",
			},
			["cooldownSwipe"] = true,
			["inverse"] = false,
			["parent"] = "Main Notifications",
			["uid"] = "NaJ3hmu)AmJ",
			["useAdjustededMin"] = false,
			["width"] = 46,
			["anchorFrameType"] = "SCREEN",
			["load"] = {
				["class"] = {
					["multi"] = {
					},
				},
				["use_vehicle"] = false,
				["zone"] = "-Thunder Bluff,-Orgrimmar",
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_mounted"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["use_zone"] = true,
			},
			["keepAspectRatio"] = false,
			["alpha"] = 1,
			["adjustedMin"] = "",
			["desaturate"] = false,
			["authorOptions"] = {
			},
			["internalVersion"] = 84,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["subRegions"] = {
				[1] = {
					["type"] = "subbackground",
				},
				[2] = {
					["text_shadowYOffset"] = 0,
					["anchor_point"] = "INNER_BOTTOMRIGHT",
					["text_justify"] = "CENTER",
					["type"] = "subtext",
					["text_fixedWidth"] = 64,
					["rotateText"] = "NONE",
					["text_fontSize"] = 12,
					["text_text"] = "%s",
					["text_text_format_s_format"] = "none",
					["anchorXOffset"] = 0,
					["text_font"] = "Friz Quadrata TT",
					["anchorYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_shadowColor"] = {
						[1] = 0,
						[2] = 0,
						[3] = 0,
						[4] = 1,
					},
					["text_visible"] = true,
					["text_selfPoint"] = "AUTO",
					["text_wordWrap"] = "WordWrap",
					["text_color"] = {
						[1] = 1,
						[2] = 1,
						[3] = 1,
						[4] = 1,
					},
					["text_shadowXOffset"] = 0,
					["text_automaticWidth"] = "Auto",
				},
				[3] = {
					["glowLines"] = 8,
					["glowDuration"] = 1,
					["type"] = "subglow",
					["glowFrequency"] = 0.25,
					["glowYOffset"] = 0,
					["useGlowColor"] = false,
					["glow"] = false,
					["glowScale"] = 1,
					["glowType"] = "buttonOverlay",
					["glowThickness"] = 1,
					["glowLength"] = 10,
					["glowColor"] = {
						[1] = 1,
						[2] = 1,
						[3] = 1,
						[4] = 1,
					},
					["glowBorder"] = false,
					["glowXOffset"] = 0,
				},
			},
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["height"] = 46,
			["icon"] = true,
			["selfPoint"] = "CENTER",
		},
	},
	["lastUpgrade"] = 1746322610,
	["historyCutoff"] = 730,
	["dbVersion"] = 84,
	["lastArchiveClear"] = 1762925222,
	["editor_font_size"] = 12,
}
