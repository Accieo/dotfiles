require('nvim-treesitter.configs').setup {
    ensure_installed = { 'lua', 'rust', 'json', 'javascript', 'python', 'html', 'css', 'astro', 'go', 'swift' },
	ignore_install = {},
	auto_install = false,
	modules = {},
    sync_install = false,
    highlight = {
        enable = true,
        additional_vim_regex_formatting = false,
    },
    highlights = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    autopairs = {
        enable = true,
    },
    indent = {
        enable = true,
    }
}
