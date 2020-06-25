let mapleader = " "
nmap <leader>hj :diffget //3<CR>
nmap <leader>hg :diffget //2<CR>
map <C-p> <Plug>AirlineSelectPrevTab <CR>
map <C-n> <Plug>AirlineSelectNextTab <CR>
nnoremap <C-X>x :bd <CR>

set timeoutlen=1000
set ttimeoutlen=50
set updatetime=50

syntax enable           " enable syntax processing
filetype plugin indent on      " load filetype-specific indent files
set tabstop=4           " number of visual spaces per TAB
set shiftwidth=4        " when indenting with '>', use 4 spaces width
set softtabstop=4       " number of spaces in tab when editing
" for Java Script files, 2 spaces
autocmd Filetype javascript setlocal ts=2 sw=2 expandtab
set expandtab           " tabs are spaces
set number              " show line numbers
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set spelllang=en_us,pt_br " set languages to spell check
set cursorline          " highlight current line
set bs=2                " enable backspace on INSERT mode
set cc=130              " vertical rule indicator
set scrolloff=5         " keep 5 line above and below the cursor
set relativenumber      " turn on relative numbers
set noswapfile          " disable SWAP file creation
set autoread            " auto reload file when it's changed
set wildmenu            " show wild menu over the command line
set nowrap              " Set no wrap lines enabled
set splitbelow splitright " Set the split direction
