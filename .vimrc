" --------
" PLUGINS   
" --------
call plug#begin()

    "Auto-Completion 
    Plug 'https://github.com/ycm-core/YouCompleteMe.git'
    "Theme
    Plug 'https://github.com/ackyshake/Spacegray.vim.git'

call plug#end()
"-------------------------------------------------------------------------------

" Color Scheme
set background=dark
colorscheme spacegray

" Add number to each line
set number
set numberwidth=1

" Highlight the cursor line
set cursorline
set cursorcolumn

" Use space instead of tabs
set expandtab
" Set tab width to 4 columns
set tabstop=4

" Set shift width to 4 spaces
set shiftwidth=4

" Do not save backup file
set nobackup

" Do not let cursor scroll below or above N number of lines
" when scrolling
set scrolloff=10

" Highlight matching characters as you type while searching
set incsearch
" Highlighting when doing a search
set hlsearch
" Ignore caps during search
set ignorecase

" Custom Commands

