"---------------- Plugin Settings ----------------------

" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')
    " Tools
    Plug 'junegunn/goyo.vim'
    Plug 'junegunn/limelight.vim'

    " defx
    Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'Kristijanhusak/defx-icons'

    " fzf
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

    " Coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Typescript highlighting
    Plug 'leafgarland/typescript-vim'
    Plug 'peitalin/vim-jsx-typescript'

    " floaterm
    Plug 'voldikss/vim-floaterm'

    " Lean & mean status/tabline for vim that's light as air.
    Plug 'vim-airline/vim-airline'

    " Git
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'

    " startify
    Plug 'mhinz/vim-startify'

    " Color-schemes
    Plug 'morhetz/gruvbox'
    Plug 'dracula/vim', { 'as': 'dracula' }

    " comments
    Plug 'preservim/nerdcommenter'

    " rainbow
    Plug 'luochen1990/rainbow'

    " vista
    Plug 'liuchengxu/vista.vim'

    " support surround operaion
    Plug 'tpope/vim-surround'

    " Find your forgot keys
    Plug 'liuchengxu/vim-which-key'

    " tabline
    Plug 'mkitt/tabline.vim'

    " nvim nightly
    Plug 'kdheepak/lazygit.nvim', { 'branch': 'nvim-v0.4.3' }

call plug#end()
"---------------- General Settings ----------------------
set nocompatible
set encoding=UTF-8
filetype plugin indent on  "Enable Plugin & Indent
syntax on " Turning Syntax on
set autoread
set wildmenu
set number relativenumber "Setting line numbers
set nu rnu
set spelllang=en_us
set spell
set backspace=indent,eol,start "Making sure backspace works
set noruler "Setting up rulers * spacing, tabs
set confirm
set shiftwidth=2
set autoindent
set smartindent
set tabstop=2
set softtabstop=2
set expandtab
set hls is "Making sure search highlights words as we type them
set ic
set laststatus=2 "Setting the size for the command area, and airline status bar
set cmdheight=1
set cursorline
set clipboard=unnamed
set viewoptions=cursor,folds,slash,unix
set noshowmode

set wildmenu
set ignorecase
set smartcase
set visualbell
set noswapfile
"silent !mkdir -p ~/.config/nvim/tmp/backup
silent !mkdir -p ~/.config/nvim/tmp/undo
silent !mkdir -p ~/.config/nvim/tmp/sessions
"set backupdir=~/.config/nvim/tmp/backup,.
"set directory=~/.config/nvim/tmp/backup,.
if has('persistent_undo')
	set undofile
	set undodir=~/.config/nvim/tmp/undo,.
endif
set colorcolumn=100
set updatetime=100
set virtualedit=block

set scrolloff=4
set completeopt=longest,noinsert,menuone,noselect,preview
set ttyfast "should make scrolling faster
set lazyredraw "same as above
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
  set mouse=a
endif
"Status-line
"set statusline=
"set statusline+=%#PmenuSel#
"set statusline+=\ %M
"set statusline+=\ %y
"set statusline+=\ %r
"set statusline+=\ %F
"set statusline+=%= "Right side settings
"set statusline+=\ %c:%l/%L
"set statusline+=\ %p%%
"set statusline+=\ [%n]
"---------------- Key Remapping ----------------------
let mapleader=" "

" Save & quit
noremap Q :q<CR>
noremap <C-q> :qa<CR>
noremap S :w<CR>

nnoremap <Up> :resize +2<CR>
nnoremap <Down> :resize -2<CR>
nnoremap <Left> :vertical resize +2<CR>
nnoremap <Right> :vertical resize -2<CR>

" Move multiple lines
nnoremap ∆ :m .+1<CR>==
nnoremap ˚ :m .-2<CR>==
inoremap ∆ <Esc>:m .+1<CR>==gi
inoremap ˚ <Esc>:m .-2<CR>==gi
vnoremap ∆ :m '>+1<CR>gv=gv
vnoremap ˚ :m '<-2<CR>gv=gv
" xnoremap K :move '<-2<CR>gv-gv
" xnoremap J :move '>+1<CR>gv-gv

noremap sv <C-w>t<C-w>H
" ===
" === Tab management
" ===
" Create a new tab with tu
noremap tu :tabe<CR>
" Move around tabs with tn and ti
noremap tp :-tabnext<CR>
noremap tn :+tabnext<CR>
" Move the tabs with tmn and tmi
noremap tmp :-tabmove<CR>
noremap tmn :+tabmove<CR>

"---------------- Color Settings ----------------------
colorscheme gruvbox
set background=dark

" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

hi TabLine      ctermfg=Black  ctermbg=Green     cterm=NONE
hi TabLineFill  ctermfg=Black  ctermbg=Green     cterm=NONE
hi TabLineSel   ctermfg=White  ctermbg=DarkBlue  cterm=NONE
let g:tablineclosebutton=1

"---------------- Plugin Settings ----------------------
" vim which key
source $HOME/.config/nvim/plug-settings/whichkeys.vim

" defx
source $HOME/.config/nvim/plug-settings/defx.vim
" Coc
source $HOME/.config/nvim/plug-settings/coc.vim
" floaterm
source $HOME/.config/nvim/plug-settings/floaterm.vim
" Goyo
source $HOME/.config/nvim/plug-settings/goyo.vim
" fzf
source $HOME/.config/nvim/plug-settings/fzf.vim
" git
source $HOME/.config/nvim/plug-settings/git.vim
" fzf
source $HOME/.config/nvim/plug-settings/start-screen.vim
" nerdcommenter
source $HOME/.config/nvim/plug-settings/nerdcommenter.vim
" rainbow
source $HOME/.config/nvim/plug-settings/rainbow.vim
" vista
source $HOME/.config/nvim/plug-settings/vista.vim
" lazygit
source $HOME/.config/nvim/plug-settings/lazygit.vim


"
" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
