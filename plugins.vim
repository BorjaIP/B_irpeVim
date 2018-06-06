"       
"       ██████╗ ██╗     ██╗   ██╗ ██████╗ ██╗███╗   ██╗███████╗
"       ██╔══██╗██║     ██║   ██║██╔════╝ ██║████╗  ██║██╔════╝
"       ██████╔╝██║     ██║   ██║██║  ███╗██║██╔██╗ ██║███████╗
"       ██╔═══╝ ██║     ██║   ██║██║   ██║██║██║╚██╗██║╚════██║
"       ██║     ███████╗╚██████╔╝╚██████╔╝██║██║ ╚████║███████║
"       ╚═╝     ╚══════╝ ╚═════╝  ╚═════╝ ╚═╝╚═╝  ╚═══╝╚══════╝


call plug#begin('~/.config/nvim/plugged')

" ------------------------------   Themes   ------------------------------

" Dracula theme
Plug 'dracula/vim'

" ------------------------------  Interface ------------------------------  
" NerdTree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
" Airline (Bottom line)
Plug 'bling/vim-airline'
" Show interactive line numbers
" Plug 'myusuf3/numbers.vim'
" Awesome icons
Plug 'ryanoasis/vim-devicons'
" Awesome start display
Plug 'mhinz/vim-startify'
" Shows git diff in the numbers line
Plug 'airblade/vim-gitgutter'
" Shows a line with the indent of the line
Plug 'yggdroot/indentline'
" Fuzzy finder files
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Window max on '<leader>-w-o'
Plug 'vim-scripts/ZoomWin'
" Window resize automatically
Plug 'roman/golden-ratio'

" ------------------------------ Code Display ------------------------------  

" Commenting pluggin
Plug 'scrooloose/nerdcommenter'
" Auto pairs completion in brackets
" Plug 'jiangmiao/auto-pairs'
" Autocomplete code for web
Plug 'mattn/emmet-vim'
" Autocompletion general lenguages
Plug 'Valloric/YouCompleteMe'
" Snippets files for various programming languages (generate code)
Plug 'honza/vim-snippets'
" Solution for snippets (generate code)
Plug 'sirver/ultisnips'

" ------------------------------ Programming Language ----------------------  

" Python style guide
" Plug 'cburroughs/pep8.py'
" CSS show colors
Plug 'gorodinskiy/vim-coloresque'
" Better syntax CSS
Plug 'hail2u/vim-css3-syntax'
" Format scss
Plug 'cakebaker/scss-syntax.vim'
" Complete for JS
" Plug 'marijnh/tern_for_vim'
Plug 'ternjs/tern_for_vim'
" Syntax in JS
" Plug 'jelera/vim-javascript-syntax'
" JS syntax highlighting and improved indentation
Plug 'pangloss/vim-javascript'
" Syntax file and other settings for TypeScript
Plug 'leafgarland/typescript-vim'
" Tools to make Vim superb for developing with Node.js
Plug 'moll/vim-node'
" Friendly and syntax JSON
Plug 'elzr/vim-json'

call plug#end()

