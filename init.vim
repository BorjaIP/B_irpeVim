
"           ██████╗  ██████╗ ██████╗      ██╗ █████╗ 
"           ██╔══██╗██╔═══██╗██╔══██╗     ██║██╔══██╗
"           ██████╔╝██║   ██║██████╔╝     ██║███████║
"           ██╔══██╗██║   ██║██╔══██╗██   ██║██╔══██║
"           ██████╔╝╚██████╔╝██║  ██║╚█████╔╝██║  ██║
"           ╚═════╝  ╚═════╝ ╚═╝  ╚═╝ ╚════╝ ╚═╝  ╚═╝
"             ███╗   ██╗██╗   ██╗██╗███╗   ███╗
"             ████╗  ██║██║   ██║██║████╗ ████║
"             ██╔██╗ ██║██║   ██║██║██╔████╔██║
"             ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║
"             ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║
"             ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝                       

source ~/.config/nvim/plugins.vim
source ~/.config/nvim/shortcuts.vim

" ------------------------------ System Settings ------------------------------- 

" Use Vim defaults
set nocompatible

" Encoding displayed and written to file in utf-8
scriptencoding utf-8
set encoding=utf-8
set fileencoding=utf-8

" Neovim color support for true 
" let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" Color Neovim
set t_Co=256
colorscheme dracula

" The current buffer can be put to the background without writing to disk
set hidden

" ------------------------------ Code formatting ------------------------------

" Enable syntax highlighting
syntax on
" Show line numbers
set number relativenumber
" Show matching brackets.
set showmatch
" Bracket blinking.
set matchtime=2

" Remember indentation of previous line
set autoindent
" Tabs are 2 spaces
set tabstop=2
" Replace tabs with ${tabstop} spaces
set expandtab
" A tab as the first character on a line is shiftwidth
set smarttab
" Default shift width for indents
set shiftwidth=2


"Change indentline
let g:indentLine_char = '┆'

" ------------------------------ Autocommands and Fyletype --------------------

" Filetypes
filetype on
filetype plugin on
filetype indent on

" This will start Startify
autocmd VimEnter * if !argc() | Startify | wincmd w | endif

" Remember cursor position between vim sessions
autocmd BufReadPost *
      \ if line("'\"") > 0 && line ("'\"") <= line("$") |
      \   exe "normal! g'\"" |
      \ endif
" Center buffer around cursor when opening files
autocmd BufRead * normal zz

" BASH / ZSH support
autocmd FileType sh setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType sh set keywordprg=man

" Java/HTML/JS support
autocmd FileType java,html,javascript setlocal shiftwidth=2 tabstop=2 softtabstop=2

" JSON support
au! BufRead,BufNewFile *.json set filetype=json

" ------------------------------  YouCompleteMe  ------------------------------

" Start autocompletion after 4 chars
" let g:ycm_min_num_of_chars_for_completion = 4
" let g:ycm_min_num_identifier_candidate_chars = 4
" let g:ycm_enable_diagnostic_highlighting = 0

" Enhance YCM JS completion with tern's smarts
autocmd FileType javascript setlocal omnifunc=tern#Complete

" Don't show YCM's preview window
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0

" Add typescript at YCM 
if !exists("g:ycm_semantic_triggers")
  let g:ycm_semantic_triggers = {}
endif

let g:ycm_semantic_triggers['typescript'] = ['.']

" ------------------------------   Snippets   ---------------------------------

" Add support snippets for JS
autocmd FileType js UltiSnipsAddFiletypes javascript-jasmine
let g:UltiSnipsExpandTrigger="j<tab>"

" Show correct syntax on JSON
let g:vim_json_syntax_conceal = 0

" ------------------------------ NERDCommenter  -------------------------------

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" ------------------------------     Emmet    ----------------------------------

let g:user_emmet_install_global = 0
autocmd FileType html,css,scss EmmetInstall

let g:user_emmet_leader_key=','

" ------------------------------   NERDTree   ----------------------------------

let g:NERDTreeWinPos = "right"
let g:NERDTreeWinSize=30
let g:NERDTreeMinimalUI=1

" ------------------------------   DevIcons   -----------------------------------

let g:webdevicons_enable_vimfiler = 1
let g:webdevicons_enable_nerdtree = 1 
let g:webdevicons_enable = 1
let g:NERDTreeGitStatusNodeColorization = 1
let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ''
let g:WebDevIconsOS = 'Darwin'
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol = ''
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {}
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['js'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['tsx'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['css'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['html'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['json'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['md'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['sql'] = ''

" ------------------------------ Airline Settings ------------------------------

let g:airline_section_x=""
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif 

let g:airline_symbols.branch = ''
let g:airline_powerline_fonts = 1
let g:airline_section_b = '  '
let gebdevicons_enable_airline_statusline = 0
let g:airline#extensions#hunks#enabled = 0
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#wordcount#enabled = 0
let g:airline#extensions#mike#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#branch#format = 0
let g:airline_detect_spelllang=0
let g:airline_detect_spell=0
let g:airline_section_y = ''
let g:line_no_indicator_chars = ['⎺', '⎻', '⎼', '⎽', '_']

