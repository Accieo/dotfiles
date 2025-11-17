local dashboard = require 'alpha.themes.dashboard'

dashboard.leader = vim.g.mapleader
dashboard.section.header.opts.hl = "DevIconDconf"
dashboard.section.header.val = {
	[[⠀⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⣤⠊⣇⡀⠀⢀⠤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⢀⠿⠀⠉⠑⠉⠊⢀⡿⠀⠀⠀⠀⢀⠤⠔⠒⣦]],
	[[⠀⠀⣀⠇⠀⠀⠀⠀⠀⠀⠸⣄⠀⠀⠀⣴⠃⡰⠤⠜⠁]],
	[[⠀⠀⠿⡀⠀⠀⢀⣀⠀⠀⠀⣿⠀⠀⢸⠱⣞⠀⠀⠀⠀]],
	[[⠀⠀⠀⡎⠀⠀⠿⠁⢀⣀⠎⢷⡀⠀⠀⢿⡙⢦⡀⠀⠀]],
	[[⠀⠀⠀⠈⠶⡶⠎⠉⠱⢶⡁⣴⠇⠀⠀⠀⠸⡀⠈⡆⠀]],
	[[⠀⠀⠀⢠⠖⢱⠀⠀⢈⢱⣌⠒⡄⠀⠀⠀⢠⠗⠀⢸⠀]],
	[[⠀⡔⠛⡕⠒⡅⠀⠢⠘⢣⣌⣶⠘⣶⠒⠉⠁⢀⣠⠃⠀]],
	[[⠘⢴⠉⠀⣿⠀⠀⢠⠂⠀⠈⠛⡄⠉⢆⠤⠔⠊⠁⠀⠀]],
	[[⠀⠈⠒⠤⣉⠣⡀⠸⡀⠀⠀⠶⡡⠀⡸⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⣀⢤⠿⢂⠜⠓⠣⢄⡀⠶⣕⠒⠁⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠛⠧⠤⠃⠀⠀⠀⢀⡸⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠸⢟⡀⠀⡜⠀⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀]]
}
dashboard.section.footer.val = ' ~ Accieo'
dashboard.section.buttons.val = {
	dashboard.button('c', '  Edit Configuration', '<cmd>e ' .. os.getenv 'HOME' .. '/.config/nvim/<CR>'),
	dashboard.button('m', '  Edit Keymaps', '<cmd>e ' .. os.getenv 'HOME' .. '/.config/nvim/lua/mappings.lua<CR>'),
	dashboard.button('p', '󰤌  Edit Plugins', '<cmd>e ' .. os.getenv 'HOME' .. '/.config/nvim/lua/plugins.lua<CR>'),
	dashboard.button('l', '  Open Lazy', '<cmd>Lazy<CR>'),
	dashboard.button('-', '  Check health', '<cmd>checkhealth<CR>'),
	dashboard.button('q', '󰖭  Quit', '<cmd>wqa<CR>'),
}

require('alpha').setup(dashboard.config)
