local plugins = require("lazy").plugins()

local c = ""
for _, plugin in ipairs(plugins) do
	-- drop the trailing `.nvim`, replace dots with dashes
	local name = plugin.name:lower():gsub("%.nvim$", ""):gsub("%.", "-")

	-- get rid of the .git at the end
	local url = plugin.url:sub(1, -5)

	c = c .. "[" .. name .. "]\n"
	c = c .. 'src.git = "' .. url .. '"\n'
	if url:find("github") then
		url = url:gsub("%w+://github.com/", "")
		c = c .. 'fetch.github = "' .. url .. '"\n'
	else
		c = c .. 'fetch.git = "' .. url .. '"\n'
	end
	c = c .. "\n"
end

-- write the plugins to a file
local file = io.open("nvfetcher.toml", "w")
if not file then
	error("Could not open file for writing")
end
file:write(c)
file:close()
