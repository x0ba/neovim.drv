return function()
	require("nvim-treesitter.configs").setup({
		auto_install = false,
		highlight = { enable = true },
		rainbow = {
			enable = true,
			extended_mode = true,
			max_file_lines = 8192,
		},
	})
	vim.o.foldmethod = "expr"
	vim.o.foldexpr = "nvim_treesitter#foldexpr()"
	vim.o.foldenable = false
end
