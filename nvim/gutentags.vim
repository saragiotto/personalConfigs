let g:gutentags_add_default_project_roots = 0
let g:gutentags_project_root = ['.git']

let g:gutentags_cache_dir = expand('~/.cache/nvim/ctags/')

let g:gutentags_generate_on_new = 1
let g:gutentags_generate_on_missing = 1
let g:gutentags_generate_on_write = 1
let g:gutentags_generate_on_empty_buffer = 0

let g:gutentags_ctags_extra_args = [
      \ '--tag-relative=yes',
      \ '--fields=+ailmnS',
      \ ]

let g:gutentags_ctags_exclude = [
      \ '*.git', '*.svg', '*.hg',
      \ '*.md',
      \ '*-lock.json',
      \ '*.lock',
      \ '*.json',
      \ '*.yml',
      \ '*.xcproject',
      \ '*.xcworkspace',
      \ 'tags*',
      \ '*.bmp', '*.gif', '*.ico', '*.jpg', '*.png',
      \ ]
