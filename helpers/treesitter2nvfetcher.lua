local parsers = require("nvim-treesitter.parsers").list

local keys = {}
for lang, _ in pairs(parsers) do
	table.insert(keys, lang)
end
table.sort(keys)

local c = ""
for _, lang in pairs(keys) do
	local info = parsers[lang].install_info

	c = c .. "[tree-sitter-grammar-" .. lang .. "]\n"
	c = c .. 'fetch.git = "' .. info.url .. '"\n'
	c = c .. 'src.git = "' .. info.url .. '"\n'
	if info.branch then
		c = c .. 'src.branch = "' .. info.branch .. '"\n'
	end

	if info.location or info.requires_generate_from_grammar then
		c = c .. "[tree-sitter-grammar-" .. lang .. ".passthru]\n"
		if info.requires_generate_from_grammar then
			c = c .. 'generate = "true"\n'
		end
		if info.location then
			c = c .. 'location = "' .. info.location .. '"\n'
		end
	end
	c = c .. "\n"
end

local cm = require("plenary.context_manager")
cm.with(cm.open("pkgs/nvim-treesitter/nvfetcher.toml", "w"), function(file)
	file:write(c)
end)
