local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- Python
require('lspconfig').pyright.setup{}
-- Rust
require('lspconfig').rust_analyzer.setup{}
-- Lua
require('lspconfig').lua_ls.setup{
	settings = {
		Lua = {
			runtime = {
				version = "LuaJIT",
			},
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
				checkThirdParty = false,
			},
			telemetry = {
				enable = false,
			},
		},
	}
}
-- TypeScript/JS
require('lspconfig').ts_ls.setup{}
-- HTML
require('lspconfig').html.setup{}
-- CSS
require('lspconfig').cssls.setup{
	capabilities = capabilities
}
-- Docker
require('lspconfig').dockerls.setup{}
-- Go
require('lspconfig').gopls.setup{}
-- C
require('lspconfig').clangd.setup{}
-- Astro
require('lspconfig').astro.setup{}
-- Tailwind
require('lspconfig').tailwindcss.setup{}
