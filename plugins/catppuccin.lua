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
		color_overrides = {
			mocha = {
				rosewater = "#ece3e1",
				flamingo = "#e1d2d2",
				pink = "#ddccd8",
				mauve = "#bbb2c9",
				red = "#c4a2aa",
				maroon = "#cbadb1",
				peach = "#d5beb4",
				yellow = "#ece3d3",
				green = "#b9ddb6",
				teal = "#badad4",
				sky = "#b8d4db",
				sapphire = "#a9c0ce",
				blue = "#aab3c7",
				lavender = "#bfc1d2",
				text = "#d3d6e1",
				subtext1 = "#bec2d2",
				subtext0 = "#a8adc3",
				overlay2 = "#9299b4",
				overlay1 = "#7c84a5",
				overlay0 = "#686f94",
				surface2 = "#555a7b",
				surface1 = "#434664",
				surface0 = "#30314b",
				base = "#101010",
				mantle = "#090909",
				crust = "#080808",
			},
		},
		highlight_overrides = {
			all = function(colors)
				local overrides = {
					-- borders
					FloatBorder = { fg = colors.overlay0 },
					LspInfoBorder = { link = "FloatBorder" },
					NvimTreeWinSeparator = { link = "FloatBorder" },
					WhichKeyBorder = { link = "FloatBorder" },
					-- telescope
					TelescopeBorder = { link = "FloatBorder" },
					TelescopeTitle = { fg = colors.text },
					TelescopeSelection = { link = "Selection" },
					TelescopeSelectionCaret = { link = "Selection" },
					-- pmenu
					PmenuSel = { link = "Selection" },
					-- bufferline
					BufferLineTabSeparator = { link = "FloatBorder" },
					BufferLineSeparator = { link = "FloatBorder" },
					BufferLineOffsetSeparator = { link = "FloatBorder" },
					--
					FidgetTitle = { fg = colors.subtext1 },
					FidgetTask = { fg = colors.subtext0 },

					NotifyBackground = { bg = colors.base },
					NotifyINFOBorder = { link = "NotifyInfoTitle" },
					NotifyINFOIcon = { link = "NotifyINFOTitle" },
					NotifyINFOTitle = { fg = colors.pink },
				}

				local U = require("catppuccin.utils.colors")
				for i = 1, 20, 1 do
					overrides = vim.tbl_extend("keep", overrides, {
						["AlphaHeaderGradient" .. i] = { fg = U.blend(colors.sky, colors.pink, i / 20) },
					})
				end
				return overrides
			end,
		},
	})

	vim.cmd.colorscheme("catppuccin")
end
