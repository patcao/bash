" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible


" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)
" Source a global configuration file if available

"Use Pathogen to allow for compilation inside of vim
"execute pathogen#infect()
"
""nnoremap <C-B> :Dispatch 
""c++ <filename>.cpp -o <filename>
"command DM w<bar>Dispatch! g++ -std=c++11 %:r.cpp -o %:r
"nnoremap <C-B> :DM<CR>
"
""c++ run on file 
"command DR Dispatch ./%:r < inp > out
"command OO bot sp out
"map <C-C> :DR<CR>:OO<CR>

set smartindent
set tabstop=2
set expandtab
set shiftwidth=2
set number
set backspace=2
set backspace=indent,eol,start

nnoremap <silent> <C-l> :nohl<CR><C-l>
set hlsearch
set pastetoggle=<F2>


"nnoremap <C-K> :call HighlightNearCursor()<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

if has("syntax")
  syntax on
endif

syntax on
set hlsearch
set splitbelow
set splitright

function ACM()
  :0read ~/.acmTemplate
  : call cursor(27,0)
endfunction

autocmd BufNewFile *Cornell/Programming/*.cpp call ACM() 
autocmd BufReadPre Makefile set noet

if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif


"set background=light
"let g:solarized_termcolors=256
"let g:solarized_termtrans=1
"colorscheme solarized
