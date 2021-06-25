let mapleader = " "
nnoremap <leader>g :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <leader>lg :lua require('telescope.builtin').live_grep()<CR>
nnoremap <leader>f :lua require('telescope.builtin').grep_string()<CR>
nnoremap <C-f> :lua require('telescope.builtin').git_files()<CR>
nnoremap <leader>lf :lua require('telescope.builtin').find_files()<CR>
nnoremap <C-X>x :bd <CR>
command! BufOnly execute '%bdelete|edit #|normal `"'
nmap <leader>x :BufOnly <CR>
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>
nnoremap <leader>v <cmd>CHADopen<CR>
