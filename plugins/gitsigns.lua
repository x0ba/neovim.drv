return function()
	local gitsigns = require("gitsigns")

	gitsigns.setup({
		current_line_blame = true,
		current_line_blame_formatter = "<author>, <author_time:%R> - <summary> | <abbrev_sha>",

		on_attach = function(bufnr)
			local function map(mode, lhs, rhs, opts)
				opts = opts or {}
				opts.buffer = bufnr
				vim.keymap.set(mode, lhs, rhs, opts)
			end

			-- Navigation
			map("n", "]c", function()
				if vim.wo.diff then
					vim.cmd.normal({ "]c", bang = true })
				else
					gitsigns.nav_hunk("next")
				end
			end, { desc = "Go to next hunk" })

			map("n", "[c", function()
				if vim.wo.diff then
					vim.cmd.normal({ "[c", bang = true })
				else
					gitsigns.nav_hunk("prev")
				end
			end, { desc = "Go to previous hunk" })

			-- Actions
			map("n", "<leader>hs", gitsigns.stage_hunk, { desc = "Stage Hunk" })
			map("n", "<leader>hr", gitsigns.reset_hunk, { desc = "Reset Hunk" })
			map("v", "<leader>hs", function()
				gitsigns.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
			end, { desc = "Stage Hunk" })
			map("v", "<leader>hr", function()
				gitsigns.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
			end, { desc = "Reset Hunk" })

			map("n", "<leader>hS", gitsigns.stage_buffer, { desc = "Stage buffer" })
			map("n", "<leader>hu", gitsigns.undo_stage_hunk, { desc = "Undo stage hunk" })
			map("n", "<leader>hR", gitsigns.reset_buffer, { desc = "Reset buffer" })
			map("n", "<leader>hp", gitsigns.preview_hunk, { desc = "Preview hunk" })
			map("n", "<leader>hb", function()
				gitsigns.blame_line({ full = true })
			end, { desc = "Blame line" })
			map("n", "<leader>hd", gitsigns.diffthis, { desc = "Diff current buffer" })
			map("n", "<leader>hD", function()
				gitsigns.diffthis("~")
			end, { desc = "Diff against last commit" })

			map("n", "<leader>tb", gitsigns.toggle_current_line_blame, { desc = "Toggle blame lines" })
			map("n", "<leader>td", gitsigns.toggle_deleted, { desc = "Toggle deleted lines" })

			map({ "o", "x" }, "ih", ":<C-U>Gitsigns select_hunk<CR>", { desc = "Select inside Hunk" })
		end,
	})
end
