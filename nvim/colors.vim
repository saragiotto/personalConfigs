set background=dark
let g:gruvbox_material_background = 'medium'
let g:gruvbox_material_enable_italic = 1
let g:gruvbox_material_disable_italic_comment = 1
let g:gruvbox_material_better_performance = 1
colorscheme gruvbox-material

" transparent bg
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE
autocmd vimenter * hi NonText guibg=NONE ctermbg=NONE
"autocmd SourcePost * highlight Normal     ctermbg=NONE guibg=NONE
"            \ |    highlight NonText     ctermbg=NONE guibg=NONE
"            \ |    highlight LineNr     ctermbg=NONE guibg=NONE
"            \ |    highlight SignColumn ctermbg=NONE guibg=NONE
