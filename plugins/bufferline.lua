return function()
	local bufferline = require("bufferline")

	local v = vim.version()
	local vStr = string.format("v%d.%d.%d", v.major, v.minor, v.patch)

	bufferline.setup({
		options = {
			show_close_icon = true,
			show_buffer_close_icons = true,
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

	vim.keymap.set("n", "<A-,>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Select buffer to the left" })
	vim.keymap.set("n", "<A-.>", "<cmd>BufferLineCycleNext<cr>", { desc = "Select buffer to the right" })

	vim.keymap.set("n", "<A-<>", "<cmd>BufferLineMovePrev<cr>", { desc = "Move buffer left" })
	vim.keymap.set("n", "<A->>", "<cmd>BufferLineMoveNext<cr>", { desc = "Move buffer right" })

  -- stylua: ignore start
	vim.keymap.set("n", "<A-1>", function() bufferline.go_to(1, true) end, { desc = "Go to buffer 1" })
	vim.keymap.set("n", "<A-2>", function() bufferline.go_to(2, true) end, { desc = "Go to buffer 2" })
	vim.keymap.set("n", "<A-3>", function() bufferline.go_to(3, true) end, { desc = "Go to buffer 3" })
	vim.keymap.set("n", "<A-4>", function() bufferline.go_to(4, true) end, { desc = "Go to buffer 4" })
	vim.keymap.set("n", "<A-5>", function() bufferline.go_to(5, true) end, { desc = "Go to buffer 5" })
	vim.keymap.set("n", "<A-6>", function() bufferline.go_to(6, true) end, { desc = "Go to buffer 6" })
	vim.keymap.set("n", "<A-7>", function() bufferline.go_to(7, true) end, { desc = "Go to buffer 7" })
	vim.keymap.set("n", "<A-8>", function() bufferline.go_to(8, true) end, { desc = "Go to buffer 8" })
	vim.keymap.set("n", "<A-9>", function() bufferline.go_to(9, true) end, { desc = "Go to buffer 9" })
	vim.keymap.set("n", "<A-0>", function() bufferline.go_to(-1, true) end, { desc = "Go to last buffer" })
	-- stylua: ignore end

	vim.keymap.set("n", "<A-p>", "<cmd>BufferLineTogglePin<cr>", { desc = "Pin/unpin buffer" })
	vim.keymap.set("n", "<A-x>", "<cmd>bdelete<cr>", { desc = "Close buffer" })
	vim.keymap.set("n", "<A-X>", "<cmd>bdelete!<cr>", { desc = "Close buffer (force)" })
	vim.keymap.set("n", "<A-c>", "<cmd>enew<cr>", { desc = "Create new buffer" })

	vim.keymap.set("n", "<A-space>", "<cmd>BufferLinePick<cr>", { desc = "Pick buffer" })
	vim.keymap.set("n", "<Space>bd", "<cmd>BufferLineSortByDirectory<cr>", { desc = "Sort buffers by directory" })
	vim.keymap.set("n", "<Space>bl", "<cmd>BufferLineSortByExtension<cr>", { desc = "Sort buffers by extension" })
end
