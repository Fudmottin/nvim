" General settings
set tabstop=4       " A tab is four spaces
set shiftwidth=4    " An indent is four spaces
set expandtab       " Use spaces, not tabs
set autoindent      " Copy indent from current line when starting a new line
set fileencoding=utf-8
set backspace=indent,eol,start

" Syntax Highlighting
syntax on           " Enable syntax highlighting

" Filetype settings
filetype plugin indent on  " Enable filetype detection and loading

" Specific settings for C and C++
augroup filetype_c_cpp_settings
  autocmd!
  autocmd FileType c,cpp setlocal cindent cinoptions=g0,i0,+0,(0,u=W) expandtab shiftwidth=4 softtabstop=4
augroup END

" Statusline
set laststatus=2    " Always show the status line"
set statusline=%<%f\ %h%m%r\ Line:\ %l\ Column:\ %c%V\ %P"

" Save and restore cursor position for each buffer
augroup res_cursor_position
  autocmd!
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END

" Specify a directory for plugins
call plug#begin('~/.config/nvim/plugged')

" Add deoplete.nvim plugin 
Plug 'Shougo/deoplete.nvim'

" Add vim-lsp-settings plugin which provides configuration for various language servers including clangd.
Plug 'neovim/nvim-lspconfig'
Plug 'mattn/vim-lsp-settings'

" Initialize plugin system
call plug#end()

" Enable deoplete at startup
let g:deoplete#enable_at_startup = 1

" For shell scripting
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'dense-analysis/ale'

