" We should specify where we want Startify to keep our sessions
let g:startify_session_dir = '~/.config/nvim/session'

" Startify Lists
let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]

" Bookmarks
let g:startify_bookmarks = [
            \ { 'c': '~/.config/i3/config' },
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'z': '~/.zshrc' },
            \ '~/Blog',
            \ '~/Code',
            \ '~/Pics',
            \ ]


" You can automatically restart a session like this
let g:startify_session_autoload = 1


" Let Startify take care of buffers
let g:startify_session_delete_buffers = 1


" Similar to Vim-rooter
let g:startify_change_to_vcs_root = 1

" Automatically Update Sessions
let g:startify_session_persistence = 1

" Get rid of empy buffer and quit
let g:startify_enable_special = 0


" Add a custom header

let g:startify_custom_header = [
        \ ' _   _      _ _        __        __         _     _ ',
        \ '| | | | ___| | | ___   \ \      / /__  _ __| | __| |',
        \ '| |_| |/ _ \ | |/ _ \   \ \ /\ /_/ _ \| `__| |/ _` |',
        \ '|  _  |  __/ | | (_) |   \ V  V / (_) | |  | | (_| |',
        \ '|_| |_|\___|_|_|\___/     \_/\_/ \___/|_|  |_|\__,_|',
        \]
