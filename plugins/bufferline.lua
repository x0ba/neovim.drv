return function()
	local bufferline = require("bufferline")
	local ctp = require("catppuccin.groups.integrations.bufferline").get()

	local v = vim.version()
	local vStr = string.format("v%d.%d.%d", v.major, v.minor, v.patch)

	bufferline.setup({
		highlights = ctp,
		options = {
			show_close_icon = false,
			show_buffer_close_icons = false,
			offsets = {
				{
					filetype = "NvimTree",
					text = "   neovim " .. vStr,
					text_align = "left",
					separator = vim.g.bc.vert,
				},
			},
			left_mouse_command = "buffer %d",
			middle_mouse_command = "bdelete! %d",
			right_mouse_command = nil,
			numbers = "ordinal",
		},
	})

	local opts = { noremap = true, silent = true }
	local map = vim.api.nvim_set_keymap

	-- hop between buffers in order of the bar
	map("n", "<A-,>", "<Cmd>BufferLineCyclePrev<CR>", opts)
	map("n", "<A-.>", "<Cmd>BufferLineCycleNext<CR>", opts)
	-- Re-order to previous/next
	map("n", "<A-<>", "<Cmd>BufferLineMovePrev<CR>", opts)
	map("n", "<A->>", "<Cmd>BufferLineMoveNext<CR>", opts)
  -- stylua: ignore start
	-- Goto buffer in position...
	map("n", "<A-1>", "<cmd>lua require('bufferline').go_to(1, true)<cr>", opts)
	map("n", "<A-2>", "<cmd>lua require('bufferline').go_to(2, true)<cr>", opts)
	map("n", "<A-3>", "<cmd>lua require('bufferline').go_to(3, true)<cr>", opts)
	map("n", "<A-4>", "<cmd>lua require('bufferline').go_to(4, true)<cr>", opts)
	map("n", "<A-5>", "<cmd>lua require('bufferline').go_to(5, true)<cr>", opts)
	map("n", "<A-6>", "<cmd>lua require('bufferline').go_to(6, true)<cr>", opts)
	map("n", "<A-7>", "<cmd>lua require('bufferline').go_to(7, true)<cr>", opts)
	map("n", "<A-8>", "<cmd>lua require('bufferline').go_to(8, true)<cr>", opts)
	map("n", "<A-9>", "<cmd>lua require('bufferline').go_to(9, true)<cr>", opts)
	map("n", "<A-0>", "<cmd>lua require('bufferline').go_to(-1, true)<cr>", opts)
	-- stylua: ignore end
	-- Pin/unpin buffer
	map("n", "<A-p>", "<Cmd>BufferLineTogglePin<CR>", opts)
	-- Close buffer
	map("n", "<A-x>", "<Cmd>bdelete<CR>", opts)
	map("n", "<A-X>", "<Cmd>bdelete!<CR>", opts)
	-- create new buffer
	map("n", "<A-c>", "<Cmd>enew<CR>", opts)
	-- pick buffer
	map("n", "<A-space>", "<Cmd>BufferLinePick<CR>", opts)
	-- Sort automatically by...
	map("n", "<Space>bd", "<Cmd>BufferLineSortByDirectory<CR>", opts)
	map("n", "<Space>bl", "<Cmd>BufferLineSortByExtension<CR>", opts)
end
