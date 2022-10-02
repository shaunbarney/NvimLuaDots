--Remap space as leader key

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

local keymap = vim.api.nvim_set_keymap
local term_opts = { silent = true }
local opt = { noremap = true }
local opts = { noremap = true, silent = true }

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap("i", "jj", "<Esc>", opt)

-- keymap('n', '<c-i>', '<Esc>:so ~/.config/nvim/init.lua<CR>', opt)
-- keymap('n', '<C-h>', ':bprev<CR>', opt)
-- keymap('n', '<C-l>', ':bnext<CR>', opt)
keymap("n", "<leader>c", ":bd<CR>", opt)
keymap("n", "<leader>nh", ":noh<CR>", opt)
keymap("n", "Y", "y$", opt)
keymap("n", "<C-c>", ":tabclose<CR>", opt)
keymap("n", "H", ":tabprevious<CR>", opt)
keymap("n", "L", ":tabnext<CR>", opt)

--- Center me naughty
keymap("n", "n", "nzzzv", opt)
keymap("n", "N", "Nzzzv", opt)
keymap("n", "J", "mzJ'z", opt)

--- Sort the UNFORGIVABLE undo
keymap("i", ",", ",<c-g>u", opt)
keymap("i", ".", ".<c-g>u", opt)
keymap("i", "!", "!<c-g>u", opt)
keymap("i", "?", "?<c-g>u", opt)
keymap("i", "<c-b>", "mm<CR><ESC>`mi", opt)

--- Move text
keymap("v", "J", ":m '>+1<CR>gv=gv", opt)
keymap("v", "K", ":m '<-2<CR>gv=gv", opt)
keymap("i", "<C-j>", ":m .+1<CR>==", opt)
keymap("i", "<C-j>", ":m .-2<CR>==", opt)
keymap("n", "<leader>j", ":m .+1<CR>==", opt)
keymap("n", "<leader>k", ":m .-2<CR>==", opt)

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

keymap("n", "<leader>e", ":Lex 30<cr>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)

-- keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<C-l>", "<cmd>lua require'telescope.builtin'.find_files()<cr>", opts)
keymap("n", "<C-p>", "<cmd>lua require'telescope.builtin'.git_files()<cr>", opts)
keymap("n", "<C-b>", "<cmd>lua require'telescope.builtin'.buffers()<cr>", opts)
keymap("n", "<C-g>", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "<C-m>", ":NvimTreeToggle<cr>", opts)
keymap("n", "<C-n>", ":NvimTreeFindFileToggle<cr>", opts)
keymap("n", "<leader>f", ":Format<cr>", opts)

keymap("n", "<leader>lg", "<cmd>lua _LAZYGIT_TOGGLE()<cr>", opts)

keymap("n", "<leader>x", ":b#<bar>bd#<CR>", opts)
