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
		function() require('nvim-tree.api').tree.toggle() end,
		make_opt 'Toggle view of NvimTree.'
	),

	telescope_invoke = remap(
		'n',
		'T',
		function() require('telescope.builtin').find_files() end,
		make_opt 'Find a project file by name using Telescope.'
	),

	telescope_live_grep = map(
		'n',
		'<leader>gr',
		function() require('telescope.builtin').live_grep() end,
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
		':w<CR>:!python3.12 %<CR>',
		make_opt 'Execute current python script.'
	),

	see_diff = remap(
		'n',
		'<leader>gd',
		function() require('gitsigns.actions').preview_hunk() end,
		make_opt('Preview diffs')
	)

}

-- Autocommand group for LSP stuff
local lsp_augroup = vim.api.nvim_create_augroup('AccieoLspConfig', { clear = true })

vim.api.nvim_create_autocmd('LspAttach', {
	group = lsp_augroup,
	desc = 'LSP actions, diagnostics and formatting',
	callback = function(ev)
		-- Buffer local opts
		vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

		local buf_map = function(mode, lhs, rhs, desc)
			local opts = make_opt(desc)
			opts.buffer = ev.buf
			vim.keymap.set(mode, lhs, rhs, opts)
		end

		-- Hover docs
		buf_map('n', 'K', vim.lsp.buf.hover, 'Hover documentation')

		-- Code actions
		buf_map('n', '<leader>ca', vim.lsp.buf.code_action, 'Code actions')
		buf_map('v', '<leader>ca', vim.lsp.buf.code_action, 'Code actions (v-mode)')

		-- Go to
		buf_map('n', 'gd', vim.lsp.buf.definition, 'Go to definition')
		buf_map('n', 'gD', vim.lsp.buf.declaration, 'Go to declaration')
		buf_map('n', 'gt', vim.lsp.buf.type_definition, 'Go to type definition')
		buf_map('n', 'gi', vim.lsp.buf.implementation, 'Go to implementation')

		-- References
		buf_map('n', 'gr', vim.lsp.buf.references, 'Go to references')

		-- Rename
		buf_map('n', '<F4>', vim.lsp.buf.rename, 'Rename symbol')

		-- Diagnostics
		buf_map('n', ']d', vim.diagnostic.get_next, 'Next diagnostic')
		buf_map('n', '[d', vim.diagnostic.get_prev, 'Previous diagnostic')
		buf_map('n', '<leader>d', vim.diagnostic.open_float, 'Show in-line diagnostic')

		buf_map('n', ']e',
			function() vim.diagnostic.jump({ count = 1, float = true, severity = vim.diagnostic.severity.ERROR }) end,
			'Next error')
		buf_map('n', '[e',
			function() vim.diagnostic.jump({ count = -1, float = true, severity = vim.diagnostic.severity.ERROR }) end,
			'Previous error')
	end
})

return accieoMaps
