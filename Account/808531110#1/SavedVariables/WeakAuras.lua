
WeakAurasSaved = {
	["editor_tab_spaces"] = 4,
	["historyCutoff"] = 730,
	["minimap"] = {
		["hide"] = true,
	},
	["displays"] = {
		["Main Notifications"] = {
			["fullCircle"] = true,
			["alpha"] = 1,
			["animate"] = false,
			["xOffset"] = 0,
			["yOffset"] = -150,
			["rowSpace"] = 1,
			["stepAngle"] = 15,
			["align"] = "CENTER",
			["gridWidth"] = 5,
			["uid"] = "pb8jb71psxd",
			["centerType"] = "LR",
			["tocversion"] = 11508,
			["grow"] = "HORIZONTAL",
			["sort"] = "none",
			["controlledChildren"] = {
				[1] = "Battle Shout Missing",
				[2] = "Battle Shout running out",
			},
			["borderColor"] = {
				[1] = 0,
				[2] = 0,
				[3] = 0,
				[4] = 1,
			},
			["stagger"] = 0,
			["animation"] = {
				["start"] = {
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["borderEdge"] = "Square Full White",
			["triggers"] = {
				[1] = {
					["untrigger"] = {
					},
					["trigger"] = {
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["unit"] = "player",
						["event"] = "Health",
						["debuffType"] = "HELPFUL",
						["names"] = {
						},
					},
				},
			},
			["borderInset"] = 1,
			["id"] = "Main Notifications",
			["information"] = {
			},
			["internalVersion"] = 84,
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
			["backdropColor"] = {
				[1] = 1,
				[2] = 1,
				[3] = 1,
				[4] = 0.5,
			},
			["subRegions"] = {
			},
			["space"] = 2,
			["gridType"] = "RD",
			["columnSpace"] = 1,
			["anchorPoint"] = "BOTTOM",
			["scale"] = 1,
			["sortHybridTable"] = {
				["MOTW missing"] = false,
				["MOTW running out"] = false,
			},
			["selfPoint"] = "CENTER",
			["anchorFrameType"] = "SELECTFRAME",
			["rotation"] = 0,
			["preferToUpdate"] = false,
			["useLimit"] = false,
			["borderOffset"] = 4,
			["borderBackdrop"] = "Blizzard Tooltip",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["authorOptions"] = {
			},
			["arcLength"] = 360,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["constantFactor"] = "RADIUS",
			["anchorFrameFrame"] = "SUFUnittarget",
			["conditions"] = {
			},
			["border"] = false,
			["frameStrata"] = 1,
			["config"] = {
			},
			["radius"] = 200,
			["limit"] = 5,
		},
		["Battle Shout running out"] = {
			["regionType"] = "icon",
			["alpha"] = 1,
			["color"] = {
				[1] = 1,
				[2] = 1,
				[3] = 1,
				[4] = 1,
			},
			["parent"] = "Main Notifications",
			["yOffset"] = 0,
			["cooldownEdge"] = false,
			["information"] = {
			},
			["tocversion"] = 11508,
			["height"] = 46,
			["adjustedMax"] = "",
			["animation"] = {
				["start"] = {
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["triggers"] = {
				[1] = {
					["untrigger"] = {
					},
					["trigger"] = {
						["unit"] = "player",
						["remOperator"] = "<=",
						["rem"] = "10",
						["matchesShowOn"] = "showOnActive",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["useRem"] = true,
						["useName"] = true,
						["names"] = {
						},
						["auranames"] = {
							[1] = "Battle Shout",
						},
						["debuffType"] = "HELPFUL",
						["spellIds"] = {
						},
					},
				},
				["activeTriggerMode"] = -10,
			},
			["adjustedMin"] = "",
			["progressSource"] = {
				[1] = -1,
				[2] = "",
			},
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["zone"] = "-Thunder Bluff,-Orgrimmar",
				["use_zone"] = true,
				["use_mounted"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_vehicle"] = false,
			},
			["internalVersion"] = 84,
			["cooldownSwipe"] = true,
			["desaturate"] = true,
			["width"] = 46,
			["anchorPoint"] = "CENTER",
			["iconSource"] = -1,
			["frameStrata"] = 1,
			["keepAspectRatio"] = false,
			["anchorFrameType"] = "SCREEN",
			["useAdjustededMax"] = false,
			["xOffset"] = 0,
			["cooldownTextDisabled"] = false,
			["useCooldownModRate"] = true,
			["subRegions"] = {
				[1] = {
					["type"] = "subbackground",
				},
				[2] = {
					["anchor_point"] = "INNER_BOTTOMRIGHT",
					["anchorXOffset"] = 0,
					["type"] = "subtext",
					["text_fontType"] = "OUTLINE",
					["text_shadowXOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowYOffset"] = 0,
					["text_text"] = "%s",
					["text_font"] = "Friz Quadrata TT",
					["text_wordWrap"] = "WordWrap",
					["text_text_format_s_format"] = "none",
					["anchorYOffset"] = 0,
					["text_fixedWidth"] = 64,
					["text_shadowColor"] = {
						[1] = 0,
						[2] = 0,
						[3] = 0,
						[4] = 1,
					},
					["text_automaticWidth"] = "Auto",
					["text_visible"] = true,
					["text_fontSize"] = 12,
					["text_color"] = {
						[1] = 1,
						[2] = 1,
						[3] = 1,
						[4] = 1,
					},
					["text_selfPoint"] = "AUTO",
				},
				[3] = {
					["glowLines"] = 8,
					["glowDuration"] = 1,
					["glowColor"] = {
						[1] = 1,
						[2] = 1,
						[3] = 1,
						[4] = 1,
					},
					["useGlowColor"] = false,
					["glowYOffset"] = 0,
					["type"] = "subglow",
					["glowType"] = "buttonOverlay",
					["glowFrequency"] = 0.25,
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowLength"] = 10,
					["glowBorder"] = false,
					["glowThickness"] = 1,
				},
			},
			["cooldown"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["uid"] = "dJKhBnYEhoY",
			["useAdjustededMin"] = false,
			["zoom"] = 0,
			["conditions"] = {
			},
			["selfPoint"] = "CENTER",
			["icon"] = true,
			["config"] = {
			},
			["id"] = "Battle Shout running out",
			["inverse"] = false,
		},
		["Battle Shout Missing"] = {
			["regionType"] = "icon",
			["alpha"] = 1,
			["color"] = {
				[1] = 1,
				[2] = 1,
				[3] = 1,
				[4] = 1,
			},
			["parent"] = "Main Notifications",
			["keepAspectRatio"] = false,
			["cooldownEdge"] = false,
			["uid"] = "NaJ3hmu)AmJ",
			["tocversion"] = 11508,
			["height"] = 46,
			["cooldown"] = true,
			["animation"] = {
				["start"] = {
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["triggers"] = {
				[1] = {
					["untrigger"] = {
					},
					["trigger"] = {
						["unit"] = "player",
						["matchesShowOn"] = "showOnMissing",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["type"] = "aura2",
						["auranames"] = {
							[1] = "Battle Shout",
						},
						["debuffType"] = "HELPFUL",
						["useName"] = true,
					},
				},
				["activeTriggerMode"] = -10,
			},
			["adjustedMin"] = "",
			["progressSource"] = {
				[1] = -1,
				[2] = "",
			},
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["zone"] = "-Thunder Bluff,-Orgrimmar",
				["use_zone"] = true,
				["use_mounted"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_vehicle"] = false,
			},
			["internalVersion"] = 84,
			["cooldownSwipe"] = true,
			["desaturate"] = false,
			["width"] = 46,
			["anchorPoint"] = "CENTER",
			["iconSource"] = -1,
			["frameStrata"] = 1,
			["adjustedMax"] = "",
			["anchorFrameType"] = "SCREEN",
			["useAdjustededMax"] = false,
			["information"] = {
			},
			["cooldownTextDisabled"] = false,
			["useCooldownModRate"] = true,
			["subRegions"] = {
				[1] = {
					["type"] = "subbackground",
				},
				[2] = {
					["anchor_point"] = "INNER_BOTTOMRIGHT",
					["anchorXOffset"] = 0,
					["type"] = "subtext",
					["text_fontType"] = "OUTLINE",
					["text_shadowXOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowYOffset"] = 0,
					["text_text"] = "%s",
					["text_font"] = "Friz Quadrata TT",
					["text_wordWrap"] = "WordWrap",
					["text_text_format_s_format"] = "none",
					["anchorYOffset"] = 0,
					["text_fixedWidth"] = 64,
					["text_shadowColor"] = {
						[1] = 0,
						[2] = 0,
						[3] = 0,
						[4] = 1,
					},
					["text_automaticWidth"] = "Auto",
					["text_visible"] = true,
					["text_fontSize"] = 12,
					["text_color"] = {
						[1] = 1,
						[2] = 1,
						[3] = 1,
						[4] = 1,
					},
					["text_selfPoint"] = "AUTO",
				},
				[3] = {
					["glowLines"] = 8,
					["glowDuration"] = 1,
					["glowFrequency"] = 0.25,
					["useGlowColor"] = false,
					["glowYOffset"] = 0,
					["type"] = "subglow",
					["glowColor"] = {
						[1] = 1,
						[2] = 1,
						[3] = 1,
						[4] = 1,
					},
					["glowType"] = "buttonOverlay",
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowLength"] = 10,
					["glowBorder"] = false,
					["glowThickness"] = 1,
				},
			},
			["useAdjustededMin"] = false,
			["xOffset"] = 0,
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["yOffset"] = 0,
			["zoom"] = 0,
			["conditions"] = {
			},
			["selfPoint"] = "CENTER",
			["icon"] = true,
			["config"] = {
			},
			["id"] = "Battle Shout Missing",
			["inverse"] = false,
		},
	},
	["lastArchiveClear"] = 1762925222,
	["features"] = {
	},
	["dynamicIconCache"] = {
	},
	["dbVersion"] = 84,
	["lastUpgrade"] = 1746322610,
	["login_squelch_time"] = 10,
	["editor_font_size"] = 12,
	["migrationCutoff"] = 730,
	["registered"] = {
	},
}
