local keymap = vim.api.nvim_set_keymap
local opt = { noremap = true }

keymap("n", "<C-h>", ":ChatGPT<CR>", opt)
