require("lualine").setup({
	options = {
		icons_enabled = true,
		theme = "auto",
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
		disabled_filetypes = {
			-- statusline = { "packer", "NvimTree" },
			statusline = { "packer" },
			winbar = {},
		},
		ignore_focus = {},
		always_divide_middle = true,
		globalstatus = true,
		refresh = {
			statusline = 1000,
			tabline = 1000,
			winbar = 1000,
		},
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch", "diff", "diagnostics" },
		lualine_c = { "filename" },
		lualine_x = { "encoding", "fileformat", "filetype" },
		lualine_y = { "progress" },
		lualine_z = { "location" },
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { "filename" },
		lualine_x = { "location" },
		lualine_y = {},
		lualine_z = {},
	},
	tabline = {},
	winbar = {},
	inactive_winbar = {},
	extensions = {},
})

--
--
-- heir line =
-- local heirline = require("heirline")
-- local conditions = require("heirline.conditions")
-- local utils = require("heirline.utils")
--
-- local colors = {
-- 	bright_bg = utils.get_highlight("Folded").bg,
-- 	bright_fg = utils.get_highlight("Folded").fg,
-- 	red = utils.get_highlight("DiagnosticError").fg,
-- 	dark_red = utils.get_highlight("DiffDelete").bg,
-- 	green = utils.get_highlight("String").fg,
-- 	blue = utils.get_highlight("Function").fg,
-- 	gray = utils.get_highlight("NonText").fg,
-- 	orange = utils.get_highlight("Constant").fg,
-- 	purple = utils.get_highlight("Statement").fg,
-- 	cyan = utils.get_highlight("Special").fg,
-- 	diag_warn = utils.get_highlight("DiagnosticWarn").fg,
-- 	diag_error = utils.get_highlight("DiagnosticError").fg,
-- 	diag_hint = utils.get_highlight("DiagnosticHint").fg,
-- 	diag_info = utils.get_highlight("DiagnosticInfo").fg,
-- 	git_del = utils.get_highlight("diffDeleted").fg,
-- 	git_add = utils.get_highlight("diffAdded").fg,
-- 	git_change = utils.get_highlight("diffChanged").fg,
-- }
--
-- local ViMode = {
-- 	-- get vim current mode, this information will be required by the provider
-- 	-- and the highlight functions, so we compute it only once per component
-- 	-- evaluation and store it as a component attribute
-- 	init = function(self)
-- 		self.mode = vim.fn.mode(1) -- :h mode()
-- 	end,
-- 	-- Now we define some dictionaries to map the output of mode() to the
-- 	-- corresponding string and color. We can put these into `static` to compute
-- 	-- them at initialisation time.
-- 	static = {
-- 		mode_names = { -- change the strings if you like it vvvvverbose!
-- 			n = "N",
-- 			no = "N?",
-- 			nov = "N?",
-- 			noV = "N?",
-- 			["no\22"] = "N?",
-- 			niI = "Ni",
-- 			niR = "Nr",
-- 			niV = "Nv",
-- 			nt = "Nt",
-- 			v = "V",
-- 			vs = "Vs",
-- 			V = "V_",
-- 			Vs = "Vs",
-- 			["\22"] = "^V",
-- 			["\22s"] = "^V",
-- 			s = "S",
-- 			S = "S_",
-- 			["\19"] = "^S",
-- 			i = "I",
-- 			ic = "Ic",
-- 			ix = "Ix",
-- 			R = "R",
-- 			Rc = "Rc",
-- 			Rx = "Rx",
-- 			Rv = "Rv",
-- 			Rvc = "Rv",
-- 			Rvx = "Rv",
-- 			c = "C",
-- 			cv = "Ex",
-- 			r = "...",
-- 			rm = "M",
-- 			["r?"] = "?",
-- 			["!"] = "!",
-- 			t = "T",
-- 		},
-- 		mode_colors = {
-- 			n = "red",
-- 			i = "green",
-- 			v = "cyan",
-- 			V = "cyan",
-- 			["\22"] = "cyan",
-- 			c = "orange",
-- 			s = "purple",
-- 			S = "purple",
-- 			["\19"] = "purple",
-- 			R = "orange",
-- 			r = "orange",
-- 			["!"] = "red",
-- 			t = "red",
-- 		},
-- 	},
-- 	-- We can now access the value of mode() that, by now, would have been
-- 	-- computed by `init()` and use it to index our strings dictionary.
-- 	-- note how `static` fields become just regular attributes once the
-- 	-- component is instantiated.
-- 	-- To be extra meticulous, we can also add some vim statusline syntax to
-- 	-- control the padding and make sure our string is always at least 2
-- 	-- characters long. Plus a nice Icon.
-- 	provider = function(self)
-- 		return " %2(" .. self.mode_names[self.mode] .. "%)"
-- 	end,
-- 	-- Same goes for the highlight. Now the foreground will change according to the current mode.
-- 	hl = function(self)
-- 		local mode = self.mode:sub(1, 1) -- get only the first mode character
-- 		return { fg = self.mode_colors[mode], bold = true }
-- 	end,
-- 	-- Re-evaluate the component only on ModeChanged event!
-- 	-- Also allows the statusline to be re-evaluated when entering operator-pending mode
-- 	update = {
-- 		"ModeChanged",
-- 		pattern = "*:*",
-- 		callback = vim.schedule_wrap(function()
-- 			vim.cmd("redrawstatus")
-- 		end),
-- 	},
-- }
--
-- heirline.setup({
-- 	opts = {
-- 		colors = colors,
-- 	},
-- 	statusline = {},
-- 	winbar = {},
-- 	tabline = {},
-- 	statuscolumn = {},
-- })
