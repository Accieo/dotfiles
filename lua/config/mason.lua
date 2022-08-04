require("mason-lspconfig").setup()

-- Change icons
require("mason").setup({
    ui = {
        icons = {
            package_installed = "",
            package_pending = "",
            package_uninstalled = "✗"
        }
    }
})
