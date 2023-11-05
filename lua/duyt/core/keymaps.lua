local keymap = vim.keymap -- or consider vim.api.nvim_set_keymap for native lua
local opts = { noremap = true, silent = true }

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Keys
-- 	"D-" -- Cmd
-- 	"C-" -- Ctrl
-- 	"S-" -- Shift
-- 	"M-" -- Alt/Opt

--Remap space as leader key
keymap.set("", "<Space>", "<Nop>", opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Visual mode to copy to clipboard
-- Cmd-C doesn't work in iterm2; use iterm2 key binding to send Cmd-C partially work: it becomes cut instead of copy
-- keymap.set("v", "<D-c>", '"+y', opts)
keymap.set("v", "<M-c>", '"+y')
keymap.set("v", "<C-c>", '"+y')

-- single x isn't worth yanking
keymap.set("n", "x", '"_x') -- delete without yanking

-- split windows
keymap.set("n", "<leader>sv", "<C-w>v") -- split vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split horizontally
keymap.set("n", "<leader>sx", ":close<CR>") -- close split

-- vim maxmizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- buffer navigation
keymap.set("n", "<M-Left>", ":bprevious<CR>") -- previous buffer
keymap.set("n", "<M-Right>", ":bnext<CR>") -- next buffer

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
