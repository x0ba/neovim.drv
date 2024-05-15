return function()
	require("catppuccin").setup({
		transparent_background = false,
		background = {
			light = "latte",
			dark = "mocha",
		},
		dim_inactive = {
			enabled = false,
			shade = "dark",
			percentage = 0.15,
		},
		styles = {
			comments = { "italic" },
			conditionals = { "italic" },
		},
		term_colors = true,
		integrations = {
			treesitter = true,
			treesitter_context = true,
			native_lsp = {
				enabled = true,
				virtual_text = {
					errors = { "italic" },
					hints = { "italic" },
					warnings = { "italic" },
					information = { "italic" },
				},
				underlines = {
					errors = { "undercurl" },
					hints = { "undercurl" },
					warnings = { "undercurl" },
					information = { "undercurl" },
				},
			},
			cmp = true,
			lsp_trouble = true,
			nvimtree = true,
			which_key = true,
			indent_blankline = {
				enabled = true,
				colored_indent_levels = true,
			},
			navic = {
				enabled = true,
				custom_bg = "NONE",
			},
			gitsigns = true,
			lightspeed = true,
			markdown = true,
			neogit = true,
			symbols_outline = true,
			ts_rainbow = true,
			vimwiki = true,
			notify = true,
		},
		highlight_overrides = {
			all = function(C)
				local overrides = {
					-- borders
					FloatBorder = { fg = C.overlay0 },
					LspInfoBorder = { link = "FloatBorder" },
					NvimTreeWinSeparator = { link = "FloatBorder" },
					WhichKeyBorder = { link = "FloatBorder" },
					-- telescope
					TelescopeBorder = { link = "FloatBorder" },
					TelescopeTitle = { fg = C.text },
					TelescopeSelection = { link = "Selection" },
					TelescopeSelectionCaret = { link = "Selection" },
					-- pmenu
					PmenuSel = { link = "Selection" },
					-- bufferline
					BufferLineTabSeparator = { link = "FloatBorder" },
					BufferLineSeparator = { link = "FloatBorder" },
					BufferLineOffsetSeparator = { link = "FloatBorder" },

					-- tokens!
					["@property"] = { fg = C.blue },
					["@function.builtin"] = { fg = C.blue },

					["@module.builtin"] = { fg = C.maroon },
					["@module.builtin.lua"] = { fg = C.maroon },
					["@lsp.typemod.variable.defaultLibrary.lua"] = { fg = C.maroon },

					tomlTable = { fg = C.yellow },
					tomlKey = { link = "@property" },
				}

				local U = require("catppuccin.utils.colors")
				for i = 1, 20, 1 do
					overrides = vim.tbl_extend("keep", overrides, {
						["AlphaHeaderGradient" .. i] = { fg = U.blend(C.sky, C.pink, i / 20) },
					})
				end
				return overrides
			end,
		},
	})

	vim.cmd.colorscheme("catppuccin")
end
