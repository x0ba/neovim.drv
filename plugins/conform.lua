return function()
	local js_fmt = { { "deno_fmt", "prettier" } }

	require("conform").setup({
		formatters_by_ft = {
			d = { "dfmt" },
			go = { { "gofumpt", "gofmt" } },
			lua = { "stylua" },
			python = { { "ruff_format", "black" } },
			rust = { "rustfmt" },

			-- shell
			bash = { "shfmt" },
			sh = { "shfmt" },

			-- data
			json = { "prettier" },
			nix = { { "alejandra", "nixfmt" } },
			toml = { "taplo" },
			yaml = { "prettier" },

			-- webdev
			astro = { "prettier" },
			javascript = js_fmt,
			javascriptreact = js_fmt,
			typescript = js_fmt,
			typescriptreact = js_fmt,
		},
		format_on_save = function(bufnr)
			if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
				return
			end

			return { timeout_ms = 500, lsp_fallback = true }
		end,
	})

	vim.api.nvim_create_user_command("FormatDisable", function(args)
		if args.bang then
			---@diagnostic disable-next-line: inject-field
			vim.b.disable_autoformat = true
		else
			vim.g.disable_autoformat = true
		end
	end, {
		desc = "Disable autoformat-on-save",
		bang = true,
	})

	vim.api.nvim_create_user_command("FormatEnable", function()
		---@diagnostic disable-next-line: inject-field
		vim.b.disable_autoformat = false
		vim.g.disable_autoformat = false
	end, {
		desc = "Re-enable autoformat-on-save",
	})
end
