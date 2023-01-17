-- Main
vim.opt.compatible = false
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.swapfile = false
vim.opt.wrap = false
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.termguicolors = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.signcolumn = 'yes'
vim.opt.incsearch = true
vim.opt.hidden = true
vim.opt.cmdheight = 1
vim.opt.updatetime = 300
vim.opt.pumheight = 10
vim.opt.shortmess:append 'c'
vim.opt.mouse = ''

-- Python
vim.g.python3_host_prog = '/opt/homebrew/opt/python@3.10/bin/python3'

-- Theme
vim.api.nvim_exec('colorscheme tokyonight', false)
