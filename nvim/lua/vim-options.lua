local map = vim.keymap.set
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
-- vim.g.nackground = "light"

vim.opt.swapfile = false
vim.o.number = true

-- Navigate vim panes better
map('n', '<c-k>', ':wincmd k<CR>')
map('n', '<c-j>', ':wincmd j<CR>')
map('n', '<c-h>', ':wincmd h<CR>')
map('n', '<c-l>', ':wincmd l<CR>')

-- Insert mode navigation
map("i", "<C-h>", "<Left>", { desc = "move left" })
map("i", "<C-l>", "<Right>", { desc = "move right" })
map("i", "<C-j>", "<Down>", { desc = "move down" })
map("i", "<C-k>", "<Up>", { desc = "move up" })
map("n", "<Esc>", "<cmd>noh<CR>", { desc = "General Clear highlights" })

-- Line numbers
map("n", "<leader>n", "<cmd>set nu!<CR>", { desc = "Toggle line number" })
map("n", "<leader>rn", "<cmd>set rnu!<CR>", { desc = "Toggle relative number" })

-- -- Comment
-- map("n", "<leader>b", "gcc", { desc = "Toggle Comment", noremap = true })
-- map("v", "<leader>b", "gc", { desc = "Toggle comment", noremap = true })

-- terminal
map("t", "<C-x>", "<C-\\><C-N>", { desc = "terminal escape terminal mode" })

-- quick mode toggel
map("i", "jk", "<Esc>", { desc = "Toggle mode", noremap = true })
map("i", "kj", "<Esc>", { desc = "Toggle mode", noremap = true })

-- copy to clipboard
map("v", "Y", [["+y]], { desc = "Toggle mode", noremap = true })

