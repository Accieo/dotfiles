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
		'<space>\\',
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
		make_opt 'Execute current python script.'
	),

	saga_hover_doc = remap(
		'n',
		'K',
		'<cmd>Lspsaga hover_doc<CR>',
		make_opt 'Display doc in pop-up window'
	),

	saga_scrdown_hover_doc = remap(
		'n',
		'<C-f>',
		function() require('lspsaga.action').smart_scroll_with_saga(1) end,
		make_opt 'Scroll down within hover docs'
	),

	saga_scrup_hover_doc = remap(
		'n',
		'<C-b>',
		function() require('lspsaga.action').smart_scroll_with_saga(-1) end,
		make_opt 'Scroll up within hover docs'
	),

	saga_code_action = remap(
		'n',
		'<leader>ca',
		'<cmd>Lspsaga code_action<CR>',
		make_opt 'Show code actions'
	)

}

return accieoMaps
