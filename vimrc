syntax enable
syntax on
set tabstop=2
set softtabstop=2
set ts=2
set shiftwidth=2
set expandtab
set cursorline
set number
set smartindent
set backspace=eol,start,indent
set whichwrap+=<,>
set tags=./.tags;,.tags

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/bundle')
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

Plug 'majutsushi/tagbar'

Plug 'Valloric/YouCompleteMe'
let g:ycm_auto_trigger = 1

Plug 'flazz/vim-colorschemes'
colorscheme solarized

Plug 'rhysd/vim-clang-format'

Plug 'kien/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git)$',
  \ 'file': '\v\.(l1|l2|l3|l4|o|orig|exe|so|dll|lib|ho|dylib|hi)$',
  \ }

Plug 'scrooloose/nerdcommenter'
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_java = 1
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1

call plug#end()
