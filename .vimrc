syntax enable           " enable syntax processing
set tabstop=4           " number of visual spaces per TAB
set softtabstop=4       " number of spaces in tab when editing
set expandtab           " tabs are spaces
set number              " show line numbers
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
                        " turn off seach highlight
nnoremap ,<space> :nohlsearch<CR>
set foldenable          " enable folding
set foldnestmax=10      " 10 nested fold max
