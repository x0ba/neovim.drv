return function()
	require("which-key").register({
		["s"] = {
			function()
				require("flash").jump()
			end,
			"Flash",
			mode = { "n", "x", "o" },
		},
		["S"] = {
			function()
				require("flash").treesitter()
			end,
			"Flash Treesitter",
			mode = { "n", "o", "x" },
		},
		["r"] = {
			function()
				require("flash").remote()
			end,
			"Remote Flash",
			mode = "o",
		},
		["R"] = {
			function()
				require("flash").treesitter_search()
			end,
			"Treesitter Search",
			mode = { "o", "x" },
		},
		["<c-f>"] = {
			function()
				require("flash").toggle()
			end,
			"Toggle Flash Search",
			mode = { "c" },
		},
	})
end
