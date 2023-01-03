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
		'<space><leader>',
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

	telescope_buffers = map(
		'n',
		'<leader>tb',
		'<cmd>Telescope buffers<CR>',
		make_opt 'Display active buffers'
	),

	save_file = map(
		'n',
		'<leader>w',
		'<cmd>w<CR>',
		make_opt 'Save current file'
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
	),

	saga_jump_next_error = remap(
		'n',
		'<F2>',
		function() require('lspsaga.diagnostic').goto_next({ severity = vim.diagnostic.severity.ERROR }) end,
		make_opt 'Jump to next error'
	),

	saga_jump_prev_error = remap(
		'n',
		'<leader><F2>',
		function() require('lspsaga.diagnostic').goto_prev({ severity = vim.diagnostic.severity.ERROR }) end,
		make_opt 'Jump to prev error'
	),

	saga_jump_next_diagnostic = remap(
		'n',
		'<F3>',
		'<cmd>Lspsaga diagnostic_jump_next<CR>',
		make_opt 'Jump to next diagnostic'
	),

	saga_jump_prev_diagnostic = remap(
		'n',
		'<leader><F3>',
		'<cmd>Lspsaga diagnostic_jump_prev<CR>',
		make_opt 'Jump to prev diagnostic'
	),

	see_diff = remap(
		'n',
		'<leader>gd',
		function() require('gitsigns.actions').preview_hunk() end,
		make_opt('Preview diffs')
	)

}

return accieoMaps
