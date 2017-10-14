try
execute pathogen#infect()
catch
endtry

syntax on
filetype plugin indent on

nnoremap <C-w>q :close<CR>
nnoremap ZZ :close<CR>
set autoindent
set backspace=indent,eol,start
set complete-=i
set display=lastline
set encoding=utf-8
set formatoptions=qrn1
set formatoptions=tcqj
set history=10000
set hlsearch
set incsearch
set langnoremap
set laststatus=2
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+,eol:$
set modelines=0
set mouse=a
set nrformats=hex
set ruler
set sessionoptions-=options
set showcmd
set smarttab
set tabpagemax=50
set tags=./tags;,tags
set textwidth=79
set ttyfast
set viminfo+=!
set wildmenu
set wrap

set nobackup
set nocompatible
set nocursorcolumn
set nocursorline
set noundofile
" Load matchit.vim, but only if the user hasn't installed a newer version.
if !exists('g:loaded_matchit') && findfile('plugin/matchit.vim', &rtp) ==# ''
	runtime! macros/matchit.vim
endif

if maparg('<C-L>', 'n') ==# ''
	nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif

set t_ut=
try
colorscheme desert
catch
colorscheme default
endtry

if has("gui_running")
	colorscheme desert
	set guifont=Liberation\ Mono\ 12
endif

set statusline=%f         " Path to the file
set statusline+=\ -\      " Separator
set statusline+=FileType: " Label
set statusline+=%y        " Filetype of the file
set statusline+=%c    " Current column
set statusline+=-    " sep
set statusline+=%l    " Current line
set statusline+=/    " Separator
set statusline+=%L   " Total lines

if exists('g:loaded_syntastic_plugin')
  let g:syntastic_always_populate_loc_list = 1
  let g:syntastic_auto_loc_list = 1
  let g:syntastic_check_on_open = 1
  let g:syntastic_check_on_wq = 0
  let g:syntastic_python_checkers = ['pylint'] " or python
  let g:syntastic_cpp_checkers = ['clang_check', 'clang_tidy'] " clang_tidy, gcc
  " Syntastic statusline settings
  set statusline+=%#warningmsg#
  set statusline+=%{SyntasticStatuslineFlag()}
  set statusline+=%*
endif

" EOF
