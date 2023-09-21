function ColorizeVim(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)
	--vim.api.nvim_set_hl(0 , "Nomral" , {bg = "none"})
	--vim.api.nvim_set_hl(0 , "NomralFloat" , {bg = "none"})
end


-- ColorizeVim("github_dark")
-- ColorizeVim("github_dark_dimmed")
ColorizeVim("github_dark_tritanopia")
