let g:startify_session_dir = '~/.config/nvim/session'

let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Project Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]

let g:startify_bookmarks = [
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'z': '~/.zshrc' },
            \ '~/Documents/Projects/business-ios',
            \ '~/Documents/Projects/picpay-ios',
            \ '~/Documents/Personal/personalConfigs',
            \ ]

let g:startify_custom_header = [
        \ '      ___           ___           ___                                    ___     ',
        \ '     /__/\         /  /\         /  /\          ___        ___          /__/\    ',
        \ '     \  \:\       /  /:/_       /  /::\        /__/\      /  /\        |  |::\   ',
        \ '      \  \:\     /  /:/ /\     /  /:/\:\       \  \:\    /  /:/        |  |:|:\  ',
        \ '  _____\__\:\   /  /:/ /:/_   /  /:/  \:\       \  \:\  /__/::\      __|__|:|\:\ ',
        \ ' /__/::::::::\ /__/:/ /:/ /\ /__/:/ \__\:\  ___  \__\:\ \__\/\:\__  /__/::::| \:\',
        \ ' \  \:\~~\~~\/ \  \:\/:/ /:/ \  \:\ /  /:/ /__/\ |  |:|    \  \:\/\ \  \:\~~\__\/',
        \ '  \  \:\  ~~~   \  \::/ /:/   \  \:\  /:/  \  \:\|  |:|     \__\::/  \  \:\      ',
        \ '   \  \:\        \  \:\/:/     \  \:\/:/    \  \:\__|:|     /__/:/    \  \:\     ',
        \ '    \  \:\        \  \::/       \  \::/      \__\::::/      \__\/      \  \:\    ',
        \ '     \__\/         \__\/         \__\/           ~~~~                   \__\/    '
        \]

let g:startify_session_delete_buffers = 1

let g:startify_change_to_vcs_root = 1

let g:startify_session_persistence = 1

let g:startify_enable_special = 0
