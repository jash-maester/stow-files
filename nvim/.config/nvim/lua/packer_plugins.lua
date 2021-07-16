-- Packer Plugins

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Local plugins can be included
  --  use '~/projects/personal/hover.nvim'

  -- Post-install/update hook with neovim command
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  -- TreeSitter Refactor
  use "nvim-treesitter/nvim-treesitter-refactor"

  -- Nord Colorscheme
  use 'shaunsingh/nord.nvim'
  -- TokyoNight
  use 'folke/tokyonight.nvim'

  -- LuaLine
  use { 'hoob3rt/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons', opt = true} }

  -- Neovim LSP
  use "neovim/nvim-lspconfig"

  -- LSP-Rooter
  use "ahmedkhalf/lsp-rooter.nvim"

  -- Compe
  use "hrsh7th/nvim-compe"

  -- Vimpeccable
  use "svermeulen/vimpeccable"

  -- NvimTree
  use "kyazdani42/nvim-tree.lua"

  -- Auto pairs
  use "windwp/nvim-autopairs"

  -- Terminal
  use {"akinsho/nvim-toggleterm.lua"}

  -- Gitsigns
  use {
  	'lewis6991/gitsigns.nvim',
  	requires = {
    	'nvim-lua/plenary.nvim'
  	}
  }

end)
