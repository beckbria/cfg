set nocompatible    " No vi plugin compatibility
syntax on           " Syntax highlighting
set noerrorbells    " Down with the dinging

" Whitespace settings
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab       " Convert tabs to spaces
set wrap            " Wrap lines.  :setlocal nowrap to disable
filetype indent on  " Load filetype-specific indent files

set number          " Show line numbers
set cursorline      " Underline where the cursor is
set lazyredraw      " Don't redraw when executing macros
set scrolloff=7     " Keep surrounding content on screen

set showmatch       " Highlight matching braces
set mat=8           " Blink cursor when matching braces

" Search options
set wildmenu        " Visual autocomplete for command menu
set incsearch       " Search as characters are entered
set hlsearch        " Highlight search matches
set ignorecase      " Ignore case when searching
set smartcase       " ....unless a capital letter is used, in which case case-sensitive

" Move vertically visually (including in wrapped lines)
nnoremap j gj
nnoremap k gk

" Syntax folding
set foldmethod=indent   " Fold based on indentation
set foldnestmax=3       " Fold at most 3 layers deep
set nofoldenable        " Don't fold by default