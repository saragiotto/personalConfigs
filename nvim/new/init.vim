set cursorline
set guicursor=
set relativenumber
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set completeopt=menuone,noinsert,noselect
set colorcolumn=130
set signcolumn=yes

set cmdheight=2

set updatetime=50

set shortmess+=c

if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')

    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'gruvbox-community/gruvbox'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'keith/swift.vim'
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'
    Plug 'ap/vim-buftabline'
    Plug 'nvim-telescope/telescope-fzy-native.nvim'
    Plug 'romgrk/fzy-lua-native'

call plug#end()

colorscheme gruvbox
highlight Normal guibg=none

let mapleader = " "
nnoremap <leader>g :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <leader>lg :lua require('telescope.builtin').live_grep()<CR>
nnoremap <C-f> :lua require('telescope.builtin').git_files()<CR>
nnoremap <leader>lf :lua require('telescope.builtin').find_files()<CR>
nnoremap <C-X>x :bd <CR>
command! BufOnly execute '%bdelete|edit #|normal `"'
nmap <leader>x :BufOnly <CR>
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>

lua << EOF
require('telescope').setup { 
    defaults = {
        prompt_position = "top",
        selection_strategy = "reset",
        sorting_strategy = "ascending",
        file_sorter =  require'telescope.sorters'.get_fzy_sorter,
        generic_sorter =  require'telescope.sorters'.get_generic_fuzzy_sorter,
        shorten_path = true,
    }
}
require('telescope').load_extension('fzy_native')
EOF

let g:buftabline_indicators = 1
