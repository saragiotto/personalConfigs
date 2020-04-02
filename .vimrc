set runtimepath+=~/.vim/pack/default
set nocompatible

syntax enable           " enable syntax processing
filetype plugin indent on      " load filetype-specific indent files
set tabstop=4           " number of visual spaces per TAB
set shiftwidth=4        " when indenting with '>', use 4 spaces width
set softtabstop=4       " number of spaces in tab when editing
set expandtab           " tabs are spaces
set number              " show line numbers
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set bs=2                " enable backspace on INSERT mode
colorscheme gruvbox
set relativenumber      " turn on relative numbers
set noswapfile          " disable SWAP file creation
set autoread            " auto reload file when it's changed
set wildmenu            " show wild menu over the command line
set nowrap              " Set no wrap lines enabled

" -------------- STATUS LINE -------------------- "
set laststatus=2
set statusline=
set statusline+=%#DiffAdd#%{(mode()=='n')?'\ \ NORMAL\ ':''}
set statusline+=%#DiffChange#%{(mode()=='i')?'\ \ INSERT\ ':''}
set statusline+=%#DiffDelete#%{(mode()=='r')?'\ \ RPLACE\ ':''}
set statusline+=%#Cursor#%{(mode()=='v')?'\ \ VISUAL\ ':''}
set statusline+=\ %n\           " buffer number
set statusline+=%#Visual#       " colour
set statusline+=%{&paste?'\ PASTE\ ':''}
set statusline+=%{&spell?'\ SPELL\ ':''}
set statusline+=%#CursorIM#     " colour
set statusline+=%R                        " readonly flag
set statusline+=%M                        " modified [+] flag
set statusline+=%#Cursor#               " colour
set statusline+=%#CursorLine#     " colour
set statusline+=\ %t\                   " short file name
set statusline+=%=                          " right align
set statusline+=%#CursorLine#   " colour
set statusline+=\ %Y\                   " file type
set statusline+=%#CursorIM#     " colour
set statusline+=\ %3l:%-2c\         " line + column
set statusline+=%#Cursor#       " colour
set statusline+=\ %3p%%\                " percentage

" -------------- Dependency -------------------- "
execute pathogen#infect()
let g:syntastic_swift_checkers = ['swiftpm', 'swiftlint']
let g:syntastic_aggregate_errors = 1
let g:syntastic_swift_swiftlint_use_defaults = 1
nnoremap <leader>sb :!swift %<CR>
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif
set timeoutlen=1000
set ttimeoutlen=50
