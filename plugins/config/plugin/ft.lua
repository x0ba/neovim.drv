vim.filetype.add({
	extension = {
		jq = "jq",
	},
	pattern = {
		[".*%.blade%.php"] = "blade",
	},
	filename = {
		[".Justfile"] = "just",
		[".justfile"] = "just",
		["Justfile"] = "just",
		["justfile"] = "just",
	},
})
