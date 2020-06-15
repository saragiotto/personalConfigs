set nocompatible

" -------------- Dependency -------------------- "
execute pathogen#infect()
let g:syntastic_swift_checkers = ['swiftlint']
let g:syntastic_aggregate_errors = 1
let g:syntastic_swift_swiftlint_use_defaults = 1

let mapleader = " "
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)
nmap <leader>gj :diffget //3<CR>
nmap <leader>gf :diffget //2<CR>
nnoremap <C-p> :GFiles<CR>
nmap <leader>b :Buffers<CR>
nnoremap <C-l> :Ag<CR>
nnoremap <C-x> :bd<CR>

"if $TERM_PROGRAM =~ "iTerm"
"    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
"    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
"endif
set timeoutlen=1000
set ttimeoutlen=50
set updatetime=250

let g:ackprg = 'ag --vimgrep'

"if executable('sourcekit-lsp')
"    au User lsp_setup call lsp#register_server({
"        \ 'name': 'sourcekit-lsp',
"        \ 'cmd': {server_info->['sourcekit-lsp']},
"        \ 'whitelist': ['swift'],
"        \ })
"endif

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
colorscheme gruvbox
set relativenumber      " turn on relative numbers
set noswapfile          " disable SWAP file creation
set autoread            " auto reload file when it's changed
set wildmenu            " show wild menu over the command line
set nowrap              " Set no wrap lines enabled
set splitbelow splitright " Set the split direction
