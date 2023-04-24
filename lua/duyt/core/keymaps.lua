vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local keymap = vim.keymap

keymap.set("n", "x", '"_x') -- delete without yanking

-- split windows
keymap.set("n", "<leader>sv", "<C-w>v") -- split vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split horizontally
keymap.set("n", "<leader>sx", ":close<CR>") -- close split

-- vim maxmizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- tab navigation
keymap.set("n", "<leader>to", ":tabnew<CR>") -- new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close tab
keymap.set("n", "<leader>tn", ":tabnext<CR>") -- next tab
keymap.set("n", "<leader>tp", ":tabprevious<CR>") -- previous tab

-- Plugins

-- nvim-tree
keymap.set("n", "C-n", ":NvimTreeFindFileToggle<CR>")
keymap.set("n", "<leader>e", ":NvimTreeFindFileToggle<CR>")

-- telescope
keymap.set("n", "<leader>ff", ":Telescope find_files<CR>")
keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>")
keymap.set("n", "<leader>fb", ":Telescope buffers<CR>")
keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>")
keymap.set("n", "<leader>fc", ":Telescope grep_string<CR>")
keymap.set("n", "<leader>fs", ":Telescope symbols<CR>")