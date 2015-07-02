"vim 配置文件格式说明
"
"1. 文档注释
"2. 与插件无关的公共设置
"3. 公共插件的配置（与具体语言无关的插件）
"4. 语言相关插件的配置
"5. 相关插件使用说明
"6. 按键绑定
"
"
"


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


set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Plugin 'gmarik/vundle'
"" rust lang syntax hightlight
Plugin 'wting/rust.vim'

""folder list viewer
Bundle 'scrooloose/nerdtree'
""tag list
Bundle 'Valloric/ListToggle'


"" fugitive is a git plugin tool
Plugin 'tpope/vim-fugitive'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'

"" vim git, work with fugitive
Plugin 'tpope/vim-git'

"" snipmate?
" https://github.com/garbas/vim-snipmate
Plugin 'garbas/vim-snipmate'
"Bundle 'Valloric/YouCompleteMe'
"filetype plugin indent on
"

" the big one plugin for python
" https://github.com/klen/python-mode
"
" It basically adds all the Python functionality you could ever want in Vim.
" Things like Lint, codecompletion, documentation lookup, jump to classes,
" refactoring tools etc.
"
" the detail configuration for python-mode is followed below
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Bundle 'klen/python-mode'
"
" Python-mode
" Activate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
"let g:pymode_rope = 0

" Documentation
" to look up Python docs by pressing K
"let g:pymode_doc = 1
"let g:pymode_doc_key = 'K'

"Linting
" check code on each save, but only use PyLint or PyFlakes
"let g:pymode_lint = 1
"let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
"let g:pymode_lint_write = 1

" Support virtualenv
"let g:pymode_virtualenv = 1

"
"Enable breakpoints plugin
"let g:pymode_breakpoint = 1
"let g:pymode_breakpoint_bind = '<leader>b'

" syntax highlighting
"let g:pymode_syntax = 1
"let g:pymode_syntax_all = 1
"let g:pymode_syntax_indent_errors = g:pymode_syntax_all
"let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
"let g:pymode_folding = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" jedi-vim
" https://github.com/davidhalter/jedi-vim
" jedi: autocomplete for python
" conflict with python-mode
"
Plugin 'davidhalter/jedi-vim'

filetype on
au BufNewFile,BufRead *.rs set filetype=rust

"python代码折叠
"输入za打开或关闭折叠
set foldmethod=indent
set foldlevel=99


"let g:ycm_path_to_python_interpreter = '/usr/bin/python2'
"let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
"let g:ycm_confirm_extra_conf = 0
"nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>

"窗口选择按键映射<C-j><C-k><C-l><C-h>
"<C-w> q关闭当前选中的窗口
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

map <F5> :call CompileRunGpp()<CR>
func! CompileRunGpp()
exec "w"
exec "!make"
endfunc

"NerdTree按键映射
map <C-f> :NERDTree<CR>

" show git branch name currently
" fugitive && vim-git
" !!! failed to use
"%{fugitive#statusline()}
