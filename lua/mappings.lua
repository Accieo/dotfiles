vim.g.mapleader = ' '

local remap = function(mode, lhs, rhs, opts)
	pcall(vim.keymap.del, mode, lhs)
	return vim.keymap.set(mode, lhs, rhs, opts)
end

local map = vim.keymap.set

local make_opt = function(desc)
	return {
		silent = true,
		noremap = true,
		desc = desc
	}
end

local accieoMaps = {
	nvim_tree_toggle = remap(
		'n',
		'<leader>\\',
		require('nvim-tree').toggle,
		make_opt 'Toggle view of NvimTree.'
	),

	telescope_invoke = remap(
		'n',
		'T',
		require('telescope.builtin').find_files,
		make_opt 'Find a project file by name using Telescope.'
	),

	telescope_live_grep = map(
		'n',
		'gr',
		require('telescope.builtin').live_grep,
		make_opt 'Grep over files in current workspace.'
	),

	python = map(
		'n',
		'<C-p>',
		':w<CR>:!python3 %<CR>',
		{ silent = false,
		  noremap = true,
		  desc = 'Execute current python script.'
		}	
	)
}

return accieoMaps
