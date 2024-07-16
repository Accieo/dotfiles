require('presence'):setup({
	buttons = false,
	editing_text = function(filename)
		local extension = string.match(filename, "%.([^%.]+)$")
		return 'Editing ' .. filename
		-- return extension and 'Editing a .' .. extension .. ' file' or 'Editing a file'
	end,
	file_explorer_text = 'Browsing files',
	git_commit_text = 'Commiting changes',
	plugin_manager_text = 'Managing plugins',
	reading_text = 'Reading a file',
	workspace_text = 'Working on a project',
	main_image = 'file'
})
