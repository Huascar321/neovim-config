set number
set mouse=a
set ts=2 sw=2
set encoding=utf-8
set clipboard=unnamed

call plug#begin()
" syntax
Plug 'andweeb/presence.nvim'
Plug 'sheerun/vim-polyglot'
Plug 'pangloss/vim-javascript'
Plug 'neoclide/vim-jsx-improve'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'vim-language-dept/css-syntax.vim'
" status bar
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'
" tree
Plug 'scrooloose/nerdtree'
" typing
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
" test
Plug 'tyewang/vimux-jest-test'
Plug 'janko-m/vim-test'
" IDE
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'mhinz/vim-signify'
Plug 'yggdroot/indentline'
Plug 'scrooloose/nerdcommenter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

let g:coc_global_extensions = [
  \ 'coc-tsserver'
  \ ]

if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif

autocmd FileType sass setl iskeyword+=-

" closetag (doesn't work)
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
