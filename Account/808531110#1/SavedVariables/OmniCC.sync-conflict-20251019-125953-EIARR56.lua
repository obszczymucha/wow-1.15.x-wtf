
OmniCCDB = {
	["profiles"] = {
		["Default"] = {
			["themes"] = {
				["Default"] = {
					["textStyles"] = {
						["seconds"] = {
						},
						["minutes"] = {
						},
						["soon"] = {
						},
					},
				},
			},
			["rules"] = {
				[1] = {
					["enabled"] = false,
					["name"] = "Auras",
					["id"] = "auras",
					["patterns"] = {
						[1] = "Aura",
						[2] = "Buff",
						[3] = "Debuff",
					},
				},
				[2] = {
					["enabled"] = false,
					["name"] = "Unit Nameplates",
					["id"] = "plates",
					["patterns"] = {
						[1] = "Plate",
					},
				},
				[3] = {
					["enabled"] = false,
					["name"] = "Action Bars",
					["id"] = "actions",
					["patterns"] = {
						[1] = "ActionButton",
						[2] = "MultiBar",
					},
				},
			},
		},
	},
	["profileKeys"] = {
		["Tachikoma - Spineshatter"] = "Default",
		["Obszczymucha - Spineshatter"] = "Default",
		["Kacprawcze - Spineshatter"] = "Default",
	},
	["global"] = {
		["addonVersion"] = "11.2.3",
		["dbVersion"] = 6,
	},
}
