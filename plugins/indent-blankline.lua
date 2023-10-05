return function()
	require("ibl").setup({
		exclude = {
			filetypes = {
				"alpha",
				"fugitive",
				"help",
				"lazy",
				"NeogitCommitView",
				"NeogitConsole",
				"NeogitStatus",
				"NvimTree",
				"TelescopePrompt",
				"Trouble",
			},
		},
	})
end
