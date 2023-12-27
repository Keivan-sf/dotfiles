require("first.packer")
require("first.remap")
require("first.set")

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- neovide configuration
if vim.g.neovide then
	-- vim.g.guifont = "FiraCode Nerd Font:h12"
	vim.g.neovide_scale_factor = "0.5"
end

-- OR setup with some options
require("nvim-tree").setup({
	update_focused_file = {
		enable = true,
	},
	git = {
		enable = true,
	},
	renderer = {
		highlight_git = true,
		icons = {
			show = {
				git = true,
			},
		},
	},
	view = {
		width = 40,
	},
})
