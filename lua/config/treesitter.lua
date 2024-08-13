require('nvim-treesitter.configs').setup {
    ensure_installed = { 'lua', 'rust', 'json', 'javascript', 'python', 'html', 'svelte', 'css', 'astro' },
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
