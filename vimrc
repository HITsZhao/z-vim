set nocompatible
syntax on
set number
set tabstop=4
set showmatch
set softtabstop=4
"set statusline=%<%f\ %h%m%r%=%k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ %-14.(%l,%c%V%)\ %P
"set t_Co=256  
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Plugin 'gmarik/vundle'
Plugin 'wting/rust.vim'
Plugin 'tpope/vim-fugitive'
Bundle 'Valloric/ListToggle'
"Bundle 'Valloric/YouCompleteMe'
"filetype plugin indent on
filetype on
au BufNewFile,BufRead *.rs set filetype=rust

"let g:ycm_path_to_python_interpreter = '/usr/bin/python2'
"let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
"let g:ycm_confirm_extra_conf = 0
"nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
map <F5> :call CompileRunGpp()<CR>
func! CompileRunGpp()
exec "w"
exec "!make"
endfunc
