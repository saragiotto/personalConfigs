if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugged')

    " Gruvbox Color scheme
    Plug 'Dave-Elec/gruvbox' 

    " Nord Color scheme
    Plug 'arcticicestudio/nord-vim'

    " Airline
    Plug 'vim-airline/vim-airline'

    " Fugitive
    Plug 'tpope/vim-fugitive'

    " Gutter
    Plug 'airblade/vim-gitgutter'

    " Polyglot
    Plug 'sheerun/vim-polyglot'

    " Renamer
    Plug 'qpkorr/vim-renamer'

    " Rooter
    Plug 'airblade/vim-rooter'

    " Yaml
    Plug 'stephpy/vim-yaml'

    " Async
    Plug 'prabirshrestha/async.vim'

    " COC
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

    " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    
    " Quick-Scope
    Plug 'unblevable/quick-scope'

    " Startify
    Plug 'mhinz/vim-startify'

    " Rainbow Parentheses
    Plug 'kien/rainbow_parentheses.vim'

    " Swift Highlight
    Plug 'keith/swift.vim'
    Plug 'vim-syntastic/syntastic'

    " Gutten Tags
    Plug 'ludovicchabant/vim-gutentags'

call plug#end()
