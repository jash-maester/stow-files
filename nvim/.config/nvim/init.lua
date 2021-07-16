-- Packer
local execute = vim.api.nvim_command
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

-- Aliases
local cmd = vim.cmd
local fn = vim.fn
local g = vim.g
local opt = vim.opt
local o = vim.o
local wo = vim.wo
local bo = vim.bo

-- Packer Plugins
require('packer_plugins')

-- Nord Theme
-- require('nord').set()

-- Tokyonight Theme
g.tokyonight_style = "night"
g.tokyonight_italic_functions = true
cmd[[colorscheme tokyonight]]

-- Evil_Lualine (Nordified)
require('evil_lualine')

-- LSP Config
require('lsp_config')

-- Compe
require('compe_config')

-- LSP Rooter
require('lsp-rooter').setup()

-- Autopairs
require('autopairs')

-- Tree Sitter
require('tree-sitter_config')

-- Nvim Tree
require('nvim-tree_custom')

-- Nvim Tree
require('terminal')

-- GitSigns
require('gitsigns_custom')

-- GLobal Options
o.encoding = 'UTF-8'
o.swapfile = true
o.dir = '/tmp'
o.smartcase = true
o.smartindent = true
o.hlsearch = true
o.incsearch = true
o.ignorecase = true
o.showcmd = true
o.mouse = 'a'
o.ruler = true
o.clipboard = 'unnamedplus'
o.shiftwidth = 4
o.tabstop = 4
o.timeout = false
o.completeopt = "menuone,noselect"
o.termguicolors = true
o.updatetime = 250

opt.wildignore = {
	'*.o',
    '*.obj',
    '*.git*',
    '*.meteor*',
    '*vim/backups*',
    '*sass-cache*',
    '*mypy_cache*',
    '*__pycache__*',
    '*cache*',
    '*logs*',
	'*node_modules*',
    '**/node_modules/**',
    '*DS_Store*',
    '*.gem',
    'log/**',
    'tmp/**',
}

wo.cursorline = true
wo.number = true
-- wo.relativenumber = true
wo.wrap = true

-------------------- MAPPINGS ------------------------------
require('custom_mappings')
