return function()
	local ctp = require("catppuccin.palettes").get_palette()
	local justfile = {
		icon = "󱚣",
		name = "Justfile",
		color = ctp.peach,
	}

	require("nvim-web-devicons").setup({
		override_by_extension = {
			["norg"] = {
				icon = "",
				name = "Neorg",
				color = ctp.green,
			},
			override_by_filename = {
				[".ecrc"] = {
					icon = "",
					name = "EditorConfigChecker",
					color = ctp.green,
				},
				[".envrc"] = {
					icon = "",
					name = "envrc",
					color = ctp.yellow,
				},
				[".luacheckrc"] = {
					icon = "󰢱",
					name = "LuacheckRC",
					color = ctp.blue,
				},
				[".Justfile"] = justfile,
				[".justfile"] = justfile,
				["Justfile"] = justfile,
				["justfile"] = justfile,
			},
		},
	})
end
