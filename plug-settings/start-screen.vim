" We should specify where we want Startify to keep our sessions
let g:startify_session_dir = '~/.config/nvim/session'

" returns all modified files of the current git repo
" `2>/dev/null` makes the command fail quietly, so that when we are not
" in a git repo, the list will be empty
function! s:gitModified()
    let files = systemlist('git ls-files -m 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

" same as above, but show untracked files, honouring .gitignore
function! s:gitUntracked()
    let files = systemlist('git ls-files -o --exclude-standard 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

let g:startify_lists = [
        \ { 'type': 'files',     'header': ['   Files']            },
        \ { 'type': 'dir',       'header': ['   Current directory: '. getcwd()] },
        \ { 'type': 'sessions',  'header': ['   Sessions']       },
        \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
        \ { 'type': function('s:gitModified'),  'header': ['   git modified']},
        \ { 'type': function('s:gitUntracked'), 'header': ['   git untracked']},
        \ { 'type': 'commands',  'header': ['   Commands']       },
        \ ]

" Bookmarks
let g:startify_bookmarks = [
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'z': '~/.zshrc' },
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
