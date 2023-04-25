local opt = vim.opt

--line number
opt.number = true
opt.relativenumber = true

--tabs & indentations
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smarttab = true
opt.autoindent = true
opt.smartindent = true

--line wrap
opt.wrap = true

--search
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true

--cursor line
opt.cursorline = true

--appearance
opt.termguicolors = true
opt.background = 'light'
opt.signcolumn = 'yes'

--backsapce
opt.backspace = 'indent,eol,start'

--clipboard
opt.clipboard:append('unnamedplus')

--split
opt.splitbelow = true
opt.splitright = true

opt.iskeyword:append('-')

