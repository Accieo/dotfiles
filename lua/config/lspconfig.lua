local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- Python
require('lspconfig').pyright.setup {
	capabilities = capabilities
}
-- Rust
require('lspconfig').rust_analyzer.setup {
	capabilities = capabilities
}
-- Lua
require('lspconfig').lua_ls.setup {
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
}
-- TypeScript/JS
require('lspconfig').ts_ls.setup {
	capabilities = capabilities
}
-- HTML
require('lspconfig').html.setup {
	capabilities = capabilities
}
-- CSS
require('lspconfig').cssls.setup {
	capabilities = capabilities
}
-- Vue
require('lspconfig').volar.setup {
	capabilities = capabilities
}
-- Docker
require('lspconfig').dockerls.setup {
	capabilities = capabilities
}
-- Go
require('lspconfig').gopls.setup {
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
}
-- C
require('lspconfig').clangd.setup {
	capabilities = capabilities
}
-- Astro
require('lspconfig').astro.setup {
	capabilities = capabilities
}
-- Tailwind
require('lspconfig').tailwindcss.setup {
	capabilities = capabilities
}
-- Swift
require('lspconfig').sourcekit.setup {
	capabilities = capabilities
}

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
