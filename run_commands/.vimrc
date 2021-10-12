" No legacy support
set nocompatible


" General
set hidden
set number
set history=1000
set wildignore=*.swp,*.bak,*.pyc,*.class
set nobackup
set noswapfile


" Indentations
set tabstop=4
set shiftwidth=4
set autoindent
set copyindent
set smarttab
set expandtab

filetype plugin indent on
autocmd FileType python set expandtab
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.


" Search
set ignorecase
set smartcase
set hlsearch
set incsearch


set splitbelow
set splitright

" git
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" Key remapping
" map <C-A> ^
" map! <C-A> <esc>I
" map <C-E> $
" map! <C-E> <esc>A

" plugins
" * VimCompleteMe
".

" Useful commands
" :set hlsearch
" :(%)s/find/replace/gc(i)(I)
" ^r"<register>
" see diff before saving: :w !diff % -
" bufdo

