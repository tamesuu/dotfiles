" SET VARS {{{
" ----------------------------------------------------------------

" BASIC SETTING {{{
" ----------------------------------------------------------------
syntax on           " 構文ごとに色分け
set number          " indicate line number
set tabstop=2       " tabサイズ
set expandtab       " タブをスペースに展開しない (expandtab:展開する)
set shiftwidth=2
"set autoindent     " インデントを現在行と同一化
set smartindent     " 新しい行は自動インデント
set fileformat=unix " 改行コード
set fileformats=unix,dos
set hlsearch        " highlight of searched result
set noswapfile      " swapを作らない
set directory=~/.vim/tmp  " swap files

"--------------------------------------------------------------------------
" neobundle
set nocompatible               " Be iMproved
filetype off                   " Required!

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

call neobundle#end()

NeoBundle 'Shougo/neocomplcache'
NeoBundle 'editorconfig/editorconfig-vim'
NeoBundle 'nanotech/jellybeans.vim'

NeoBundle 'tyru/open-browser.vim'
NeoBundle 'kannokanno/previm'

" scala用syntax highlight
NeoBundle 'derekwyatt/vim-scala'

" .slim
NeoBundle 'slim-template/vim-slim'

" .tsx
NeoBundle 'leafgarland/typescript-vim'
" インデントされないので入れた
" http://qiita.com/raamen/items/2d6aaf0bc98cb52e9a07
NeoBundle 'jason0x43/vim-js-indent'
au BufRead,BufNewFile,BufReadPre *.ts set filetype=typescript
autocmd FileType typescript setlocal sw=2 sts=2 ts=2 et

NeoBundle 'thinca/vim-quickrun'


colorscheme jellybeans
filetype plugin indent on     " Required!

" Previm
let g:previm_open_cmd = ''
nnoremap [previm] <Nop>
nmap <Space>p [previm]
nnoremap <silent> [previm]o :<C-u>PrevimOpen<CR>
nnoremap <silent> [previm]r :call previm#refresh()<CR>
"
" Installation check.
if neobundle#exists_not_installed_bundles()
    echomsg 'Not installed bundles : ' .
            \ string(neobundle#get_not_installed_bundle_names())
    echomsg 'Please execute ":NeoBundleInstall" command.'
      "finish
endif

" COMMAND SETTING {{{
" ----------------------------------------------------------------
" hide highlight by search
noremap <esc><esc> :nohlsearch<CR><esc>
" }}}

" TAGS SETTING {{{
" ----------------------------------------------------------------
" }}}

" FUNCTION SETTING {{{
" ----------------------------------------------------------------
" }}}

" EACH FILE SETTING {{{
" ----------------------------------------------------------------
"autocmd BufWritePost *.php call PHPLint()
autocmd BufNewFile,BufRead *.twig set filetype=php
autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
autocmd BufNewFile,BufRead *.vue set filetype=html
" }}}
