" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

set nocompatible

if &term != 'cygwin' && &term != 'linux'
	set t_Co=256
endif

syntax on
set background=dark
colorscheme loki
set listchars=tab:>-,trail:.,extends:>,eol:$

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
"    \| exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd      " Show (partial) command in status line.
set showmatch    " Show matching brackets.
set ignorecase   " Do case insensitive matching
set smartcase    " Do smart case matching
set incsearch    " Incremental search
set hlsearch
nnoremap <silent> <Space> :silent noh<Bar>echo<CR>
set nolazyredraw
"set autowrite    " Automatically save before commands like :next and :make
"set hidden       " Hide buffers when they are abandoned
set mouse=a      " Enable mouse usage (all modes) in terminals
set nu
set scrolloff=3  "Keep 3 lines from edge when scrolling
"underline line cursor is in
set cursorline

let no_curly_error=1
set title
set ruler
set showmode
set number
set laststatus=2
set showcmd
"set statusline=(%n)%f%h%m%r%w\ %y\ \[%{&ff}\]\ (%l,%v)\ %p%%%=}
set hidden

set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set noexpandtab
set foldmethod=marker

set nowrap
" set textwidth=80
set formatoptions=croqnvt

syntax on
" let asmsyntax="nasm"

filetype on
filetype indent on
filetype plugin on
autocmd FileType c set omnifunc=ccomplete#Complete


"Spell Check
let b:myLang=0
let g:myLangList=["off","en_us"]
function! ToggleSpell()
	if !exists("b:myLang")| let b:myLang=0|endif
	let b:myLang=b:myLang+1
	if b:myLang>=len(g:myLangList) | let b:myLang=0 | endif
		if b:myLang==0
			setlocal nospell
		else
			execute "setlocal spell spelllang=".get(g:myLangList, b:myLang)
		endif
	echo "spell check lang:" g:myLangList[b:myLang]
endfunction

function! ToggleSyntax()
	if exists("g:syntax_on")
		syntax off
		echo "syntax highlighting: off"
	else
		syntax enable
	endif
endfunction


let b:myList=0
function! ToggleList()
	if !exists("b:myList")| let b:myList=0|endif
	if b:myList
		set list!
		let b:myList=0
		echo "listmode: off"
	else
		set list
		let b:myList=1
		echo "listmode: on"
	endif
endfunction

function! TogglePaste()
	if &paste
		set nopaste
		echo "paste disabled"
	else
		set paste
		echo "paste enabled"
	endif
endfunction

function! ToggleWrap()
	if &wrap
		set nowrap
		echo "word wrap: off"
	else
		set wrap
		echo "word wrap: on"
	endif
endfunction

noremap <F1> :echo "!"<CR>
nnoremap <silent> <F3> :NumbersToggle<CR>
map <silent> <F7> :call ToggleSpell()<CR>
map <silent> <F8> :call ToggleSyntax()<CR>
map <silent> <F9> :call ToggleList()<CR>
map <silent> <F10> :call TogglePaste()<CR>
map <silent> <F11> :call ToggleWrap()<CR>

" Gives Arrow Keys a more natural behavior w/ wrapped lines
noremap <down> gj
noremap <up>   gk

" Disable Ex mode
map Q gq


" Easymotion

" Settings for LaTeX
let g:tex_flavor = 'latex'
let g:Tex_ViewRule_dvi = 'zathura'
let g:Tex_ViewRule_ps  = 'zathura'
let g:Tex_ViewRule_pdf = 'zathura'
let g:Tex_FormatDependency_pdf = 'dvi,ps,pdf'
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_MultipleCompileFormats='dvi,pdf'

let &titleold=getcwd()
