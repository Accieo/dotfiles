local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- Python
vim.lsp.config('pyright', {
	capabilities = capabilities
})
-- Rust
vim.lsp.config('rust_analyzer', {
	capabilities = capabilities
})
-- Lua
vim.lsp.config('lua_ls', {
	capabilities = capabilities,
	on_attach = function(client, _)
		client.server_capabilities.documentFormattingProvider = true
	end,
	settings = {
		Lua = {
			runtime = { version = "LuaJIT", },
			diagnostics = { globals = { "vim" }, },
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
				checkThirdParty = false,
			},
			telemetry = { enable = false, },
		},
	}
})
-- TypeScript/JS
vim.lsp.config('ts_ls', {
	capabilities = capabilities,
	filetypes = {
		"javascript",
		"typescript",
		"vue",
	},
})
-- HTML
vim.lsp.config('html', {
	capabilities = capabilities
})
-- CSS
vim.lsp.config('cssls', {
	capabilities = capabilities
})
-- Vue
vim.lsp.config('vue_ls', {
	capabilities = capabilities
})
-- Docker
vim.lsp.config('dockerls', {
	capabilities = capabilities
})
-- Go
vim.lsp.config('gopls', {
	capabilities = capabilities,
	settings = {
		gopls = {
			analyses = {
				unusedparams = true
			},
			staticcheck = true,
			gofumpt = true,
		}
	}
})
-- C
vim.lsp.config('clangd', {
	capabilities = capabilities
})
-- Astro
vim.lsp.config('astro', {
	capabilities = capabilities
})
-- Tailwind
vim.lsp.config('tailwindcss', {
	capabilities = capabilities
})
-- Swift
vim.lsp.config('sourcekit', {
	capabilities = capabilities
})

-- Automatic formatting
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = { "*.go", "*.lua" },
	callback = function()
		vim.lsp.buf.format({ async = true })
	end
})

-- Diagnostic setup
vim.diagnostic.config({
	virtual_text = {
		spacing = 4,
		prefix = '●',
		source = "if_many",
	},
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = "",
			[vim.diagnostic.severity.WARN]  = "",
			[vim.diagnostic.severity.INFO]  = "",
			[vim.diagnostic.severity.HINT]  = "",
		},
	},
	underline = true,
	update_in_insert = false,
	severity_sort = true,
	float = {
		focusable = false,
		style = "minimal",
		border = "rounded",
		header = "",
		prefix = "",
	},
})
