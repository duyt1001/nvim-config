-- Description: This file is used to setup packer.nvim and install plugins
-- Thanks to @wbthomason for packer.nvim and josean-dev/dev-environment-files 
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[ 
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

-- import packer safely
local status, packer = pcall(require, 'packer')
if not status then
  return
end 

return packer.startup(function(use)
  use('wbthomason/packer.nvim')

  use("nvim-lua/plenary.nvim") -- lua functions that many plugins use

  use('christoomey/vim-tmux-navigator')

  use('szw/vim-maximizer')

  -- commenting with gc
  use("numToStr/Comment.nvim")

  -- file explorer
  use("nvim-tree/nvim-tree.lua")

  --devicons
  use("nvim-tree/nvim-web-devicons")

  -- nvim-telescope
  use("nvim-telescope/telescope-symbols.nvim")
  use({"nvim-telescope/telescope-fzf-native.nvim", run = "make" })
  use({
	"nvim-telescope/telescope.nvim",
	branch = '0.1.x',
	requires = {
	--   {"nvim-lua/popup.nvim"},
	  {"nvim-lua/plenary.nvim"},
	  {"nvim-telescope/telescope-fzf-native.nvim", run = "make" },
	  {"nvim-telescope/telescope-symbols.nvim"},
	--   {"nvim-telescope/telescope-z.nvim"},
	}
  })

  -- autocompletion
  use("hrsh7th/nvim-cmp") -- autocompletion engine
  use("hrsh7th/cmp-buffer") -- source for text in buffer
  use("hrsh7th/cmp-path") -- source for file system paths

  -- snippets
  use("L3MON4D3/LuaSnip") -- snippet engine
  use("saadparwaiz1/cmp_luasnip") -- for autocompletion
  use("rafamadriz/friendly-snippets") -- useful snippets

  -- lsp
  use("williamboman/mason.nvim") -- lsp installer
  use("williamboman/mason-lspconfig.nvim") -- lspconfig wrapper for mason.nvim
  use("neovim/nvim-lspconfig") -- collection of configurations for built-in lsp client

  -- github copilot
  use("github/copilot.vim")

  -- treesitter
  use({
	"nvim-treesitter/nvim-treesitter",
	run = function()
	  require("nvim-treesitter.install").update({with_sync = true})
  	end,
  })

  -- autopairs
  use("windwp/nvim-autopairs")
  use("windwp/nvim-ts-autotag")

  -- bufferline
  use({"akinsho/bufferline.nvim", tag="*", requires='nvim-tree/nvim-web-devicons'})

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
