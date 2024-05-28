return function()
	local presence = require("presence")

	local blacklist = {
		[vim.fn.expand("~/Code/freelance")] = "Using nvim to freelance.",
		[vim.fn.expand("~/Code/work")] = "Using nvim at work.",
	}

	---@param activity string?
	---@param info string?
	---@return {text: string, state: boolean}
	local conceal = function(activity, info)
		local cur_file = vim.fn.expand("%:p")
		for k, v in pairs(blacklist) do
			if cur_file:find("^" .. k) ~= nil then
				return { text = v, state = true }
			end
		end
		if info ~= nil then
			return { text = activity .. " " .. info, state = false }
		end
		return { text = activity, state = false }
	end

	local v = vim.version()

	presence:setup({
		auto_update = true,
		debounce_timeout = 10,
		neovim_image_text = string.format("Neovim v%d.%d.%d", v.major, v.minor, v.patch),
		main_image = "file",
		show_time = true,
		enable_line_number = true,
		buttons = function(_, repo_url)
			if conceal().state then
				return {
					{
						label = "View my config",
						url = "https://github.com/nekowinston/dotfiles",
					},
				}
			else
				return {
					{
						label = "Steal the code",
						url = repo_url,
					},
				}
			end
		end,
		file_assets = {
			["d"] = {
				"Dlang",
				"https://github.com/dlang.png",
			},
			["astro"] = {
				"Astro",
				"https://github.com/withastro.png",
			},
			["k8s.yaml"] = {
				"Kubernetes",
				"https://github.com/kubernetes.png",
			},
			["Chart.yaml"] = {
				"Helm Chart",
				"https://raw.githubusercontent.com/helm/community/main/art/images/Logo-Tweak-Dark.png",
			},
			["helmfile.yaml"] = {
				"helmfile",
				"https://raw.githubusercontent.com/helm/community/main/art/images/Logo-Tweak-Dark.png",
			},
			["prisma"] = {
				"Prisma",
				"https://github.com/prisma.png",
			},
		},
		-- Rich Presence text options
		editing_text = function(s)
			return conceal("Editing", s).text
		end,
		reading_text = function(s)
			return conceal("Reading", s).text
		end,
		file_explorer_text = function(s)
			return conceal("Browsing", s).text
		end,
		workspace_text = function(s)
			if s ~= nil and not conceal().state then
				return "Working on " .. s
			else
				return nil
			end
		end,
		git_commit_text = "Committing changes",
		plugin_manager_text = "Managing Plugins",
	})
end
