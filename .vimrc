set nocompatible
"let g:NERDTreeDirArrows=0
"let NERDTreeDirArrowExpandable ='+'
"let NERDTreeDirArrowCollapsible ='~'
let NERDTreeIgnore = ['\.pyc$','\.o$']
let g:NERDTreeWinSize=40
"let NERDTreeShowExecutableFlag=0

let g:indentLine_enabled = 0
"let g:indentLine_setColors = 0
"let g:indentLine_color_term = 20

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

"let mapleader = ","
map :nt <ESC>:NERDTree<CR>
"nnoremap <Leader>w <C-w>w
nnoremap <TAB>w <C-w>w

set sw=4
set sts=4
set ts=4
set autoindent
"set smartindent
filetype indent on
set smarttab
set expandtab
set cindent
set ruler
set nu
set hls
set signcolumn=yes
set rulerformat=%70(%<%40.45f\ %m\ %r%=%l/%L,\ %cpp%V\ %4P%)
syntax on
colorscheme desert
set colorcolumn=80,130
"set visualbell

"set mousemodel=popup
"highlight ColorColumn ctermbg=7
highlight ColorColumn ctermbg=8

if &diff
    syntax off
endif
"hi DiffAdd      gui=none    guifg=NONE          guibg=#bada9f
"hi DiffChange   gui=none    guifg=NONE          guibg=#f39c12
"hi DiffDelete   gui=bold    guifg=#ff8080       guibg=#ffb0b0
"hi DiffText     gui=none    guifg=NONE          guibg=#8cbee2

au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif


au BufRead,BufNewFile *.py set expandtab
"aug python
"    au FileType python setlocal ts=4 sts=4 sw=4 noexpandtab 
"aug end


set fileencodings=utf-8,euc-kr
"set fileencodings=utf-8,euc-kr,latin1

"let $VIMHOME='~/USER/kojh/.vim_kojh'
"let &runtimepath='~/USER/kojh/.vim_kojh,$VIMRUNTIME'

abbr cl@ ////////////////////////////////////////////////////////////////////////////////
iabbr cs@ /*------------------------------------------------------------------------------
iabbr ce@ ------------------------------------------------------------------------------*/
iabbr df@ (%s:%s:%d)
iabbr dv@ __FILE__,__func__,__LINE__
iabbr time@ <C-R>=strftime("%Y%m%d %H:%M")

au BufNewFile,BufRead *.t,*.sc,*.pc set filetype=c

"au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)

"highlight OverLength ctermbg=LightGrey ctermfg=black guibg=#FFD9D9
"match OverLength /\%>80v.\+/

