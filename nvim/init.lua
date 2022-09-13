local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')


Plug('nvim-treesitter/nvim-treesitter', { ['do'] = function() vim.call(':TSUpdate') end })

Plug 'Mofiqul/dracula.nvim'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'kyazdani42/nvim-web-devicons' 
Plug 'kyazdani42/nvim-tree.lua'

vim.call('plug#end')

vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1
vim.g.mapleader = ' '

vim.cmd[[colorscheme dracula]]

require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<Leader>f', ':Telescope find_files<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>g', ':Telescope live_grep<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>b', ':Telescope buffers<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>h', ':Telescope help_tags<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { noremap = true, silent = true })

local o = vim.o
local wo = vim.wo
local bo = vim.bo

-- global options
o.cursorline = true
o.relativenumber = true
o.hidden = true
o.expandtab = true
o.smartindent = true
o.smartcase = true
o.hlsearch = true
o.incsearch = true
o.swapfile = false

o.undodir = '~/.vim/undodir'
o.scrolloff = 5
o.cmdheight = 2
wo.colorcolumn = '130'

-- ... snip ... 

-- window-local options

-- buffer-local options
