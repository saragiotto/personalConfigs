if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')

    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    "Plug 'Conni2461/telescope.nvim', { 'branch': 'cycle_prompt_history' }
    Plug 'gruvbox-community/gruvbox'
    "Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'keith/swift.vim'
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'
    Plug 'ap/vim-buftabline'
    Plug 'nvim-telescope/telescope-fzy-native.nvim'
    Plug 'romgrk/fzy-lua-native'
    Plug 'ms-jpq/chadtree', { 'branch': 'chad', 'do': 'python3 -m chadtree deps' }
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'sainnhe/gruvbox-material'
    Plug 'tjdevries/express_line.nvim'

call plug#end()
