local home = os.getenv('HOME')

require("luasnip.loaders.from_vscode").lazy_load {
    paths = home..'/.local/share/nvim/site/pack/packer/start/friendly-snippets'
}
