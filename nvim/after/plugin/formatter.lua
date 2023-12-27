-- Utilities for creating configurations
local util = require("formatter.util")

local buffer_to_string = function()
	local content = vim.api.nvim_buf_get_lines(0, 0, vim.api.nvim_buf_line_count(0), false)
	return content
	-- return table.concat(content, "\n")
end

-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
require("formatter").setup({
	-- Enable or disable logging
	logging = true,
	-- Set the log level
	log_level = vim.log.levels.WARN,
	-- All formatter configurations are opt-in
	filetype = {
		lua = {
			require("formatter.filetypes.lua").stylua,
		},
		javascript = {
			require("formatter.filetypes.javascript").prettier,
		},
		typescript = {
			require("formatter.filetypes.typescript").prettier,
		},
		json = {
			require("formatter.filetypes.json").prettier,
		},
		css = {
			require("formatter.filetypes.css").prettier,
		},
		html = {
			require("formatter.filetypes.html").prettier,
		},
		markdown = {
			require("formatter.filetypes.json").prettier,
		},
		rust = {
			require("formatter.filetypes.rust").rustfmt,
		},
		python = {
			require("formatter.filetypes.python").black,
		},
		cpp = {
			require("formatter.filetypes.cpp").astyle,
			function()
				return {
					exe = "astyle",
					args = {
						"<",
						util.escape_path(util.get_current_buffer_file_path()),
						"--style=java",
						"--squeeze-ws",
					},
					stdin = true,
				}
			end,
		},
		-- Use the special "*" filetype for defining formatter configurations on
		-- any filetype
		["*"] = {
			-- "formatter.filetypes.any" defines default configurations for any
			-- filetype
			require("formatter.filetypes.any").remove_trailing_whitespace,
		},
	},
})

vim.keymap.set("n", "<leader>f", vim.cmd.Format)
