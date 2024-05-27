return function()
	local bc = vim.g.bc

	local no_preview = function(opts)
		local defaults = require("telescope.themes").get_dropdown({
      -- stylua: ignore
      borderchars = {
        { bc.horiz, bc.vert, bc.horiz, bc.vert, bc.topleft, bc.topright, bc.botright, bc.botleft },
        prompt = { bc.horiz, bc.vert, " ", bc.vert, bc.topleft, bc.topright, bc.vert, bc.vert },
        results = { bc.horiz, bc.vert, bc.horiz, bc.vert, bc.vertright, bc.vertleft, bc.botright, bc.botleft },
        preview = { bc.horiz, bc.vert, bc.horiz, bc.vert, bc.topleft, bc.topright, bc.botright, bc.botleft },
      },
			width = 0.8,
			previewer = false,
			prompt_title = false,
			results_title = false,
		})
		return vim.tbl_deep_extend("keep", opts or {}, defaults)
	end

	local telescope = require("telescope")

	telescope.load_extension("file_browser")
	telescope.load_extension("fzf")
	telescope.load_extension("project")

	telescope.setup({
		defaults = {
			prompt_prefix = " ",
			selection_caret = " ",
			multi_icon = "│",
      -- stylua: ignore
      borderchars = { bc.horiz, bc.vert, bc.horiz, bc.vert, bc.topleft, bc.topright, bc.botright, bc.botleft },
		},
		pickers = {
			find_files = no_preview(),
			live_grep = no_preview({
				previewer = true,
			}),
			load_session = no_preview(),
		},
		extensions = {
			file_browser = {
				grouped = true,
				sorting_strategy = "ascending",
			},
			fzf = {
				fuzzy = true,
				override_generic_sorter = true,
				override_file_sorter = true,
				case_mode = "smart_case",
			},
		},
	})

	local wk_present, wk = pcall(require, "which-key")
	if not wk_present then
		return
	end
	wk.register({
		["<leader>f"] = {
			name = "+Telescope",
			b = {
				"<cmd>Telescope file_browser grouped=true<cr>",
				"File browser",
			},
			d = { "<cmd>Telescope find_files<cr>", "Find file" },
			g = { "<cmd>Telescope live_grep<cr>", "Live grep" },
			h = { "<cmd>Telescope help_tags<cr>", "Help tags" },
			p = { "<cmd>Telescope project<cr>", "Project" },
			s = { "<cmd>SessionManager load_session<cr>", "Show sessions" },
		},
	})
end
