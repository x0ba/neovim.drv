local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

-- easier split navigation
map("n", "<C-J>", "<C-W>j", opts)
map("n", "<C-K>", "<C-W>k", opts)
map("n", "<C-L>", "<C-W>l", opts)
map("n", "<C-H>", "<C-W>h", opts)
map("n", "<C-W>\\", ":vsplit<CR>", opts)
map("n", "<C-W>-", ":split<CR>", opts)
map("n", "<C-W>x", ":q<CR>", opts)
-- escape :terminal easier
map("t", "<Esc>", "<C-\\><C-n>", opts)
-- keep cursor in the middle when scrolling and searching
map("n", "<C-d>", "<C-d>zz", opts)
map("n", "<C-u>", "<C-u>zz", opts)
map("n", "n", "nzzzv", opts)
map("n", "N", "Nzzzv", opts)

-- NvimTree
map("n", "<C-N>", ":NvimTreeToggle<CR>", opts)
