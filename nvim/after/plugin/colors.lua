require("github-theme").setup({
	options = {
		transparent = false,
	},
})

function ColorizeVim(color)
	color = color or "github_dark_tritanopia"
	vim.cmd.colorscheme(color)

	-- These commands work like crazy!
	-- vim.cmd("highlight Normal guibg=none")
	-- vim.cmd("highlight NonText guibg=none")
	-- vim.cmd("highlight Normal ctermbg=none")
	-- vim.cmd("highlight NonText ctermbg=none")

	-- the following did not work
	-- vim.api.nvim_set_hl(0, "Nomral", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "NomralFloat", { bg = "none" })
end

-- ColorizeVim("github_dark_tritanopia")
vim.opt.background = "dark"
-- ColorizeVim("github_dark")
-- ColorizeVim("github_dark_dimmed")
-- ColorizeVim("rose-pine")
-- ColorizeVim("oxocarbon")
ColorizeVim("catppuccin-mocha")
