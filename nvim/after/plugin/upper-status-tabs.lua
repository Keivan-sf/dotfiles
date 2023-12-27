local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map("n", "<C-PageUp>", "<Cmd>BufferPrevious<CR>", opts)
map("n", "<C-PageDown>", "<Cmd>BufferNext<CR>", opts)
map("n", "<S-Tab>", "<Cmd>BufferClose<CR>", opts)
