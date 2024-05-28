-- easier split navigation
vim.keymap.set("n", "<C-J>", "<C-W>j", { desc = "Activate pane below" })
vim.keymap.set("n", "<C-K>", "<C-W>k", { desc = "Activate pane above" })
vim.keymap.set("n", "<C-L>", "<C-W>l", { desc = "Activate pane right" })
vim.keymap.set("n", "<C-H>", "<C-W>h", { desc = "Activate pane left" })
vim.keymap.set("n", "<C-W>\\", ":vsplit<CR>", { desc = "Split vertically" })
vim.keymap.set("n", "<C-W>-", ":split<CR>", { desc = "Split horizontally" })
vim.keymap.set("n", "<C-W>x", ":q<CR>", { desc = "Close buffer" })

-- escape :terminal easier
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

-- keep cursor in the middle when scrolling and searching
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y', { desc = "Copy to clipboard" })
vim.keymap.set({ "n", "v" }, "<leader>p", '"+p', { desc = "Paste from clipboard" })
