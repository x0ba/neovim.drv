return function()
	local neotest_ns = vim.api.nvim_create_namespace("neotest")

	vim.diagnostic.config({
		virtual_text = {
			format = function(diagnostic)
				local message = diagnostic.message:gsub("\n", " "):gsub("\t", " "):gsub("%s+", " "):gsub("^%s+", "")
				return message
			end,
		},
	}, neotest_ns)

	local neotest = require("neotest")

	neotest.setup({
		adapters = {
			require("neotest-deno"),
			require("neotest-go"),
			require("rustaceanvim.neotest"),
		},
	})
end
