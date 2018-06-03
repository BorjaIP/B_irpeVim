
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

" Neovim Settings
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  " set nornu
  set number
  filetype plugin on
  setlocal statusline=%#Normal#
  filetype plugin indent on
  filetype on
  syntax on
" This will start Startify
  autocmd VimEnter * if !argc() | Startify | wincmd w | endif
" Color Neovim
  colorscheme dracula
" Remember cursor position between vim sessions
  autocmd BufReadPost *
             \ if line("'\"") > 0 && line ("'\"") <= line("$") |
             \   exe "normal! g'\"" |
             \ endif
" Center buffer around cursor when opening files
  autocmd BufRead * normal zz
" For conceal markers
	if has('conceal')
		set conceallevel=2 concealcursor=niv
	endif

" ------------------------------ Code formatting ------------------------------

" Show existing tab with 2 spaces width
  set tabstop=2
" Indenting use 2 spaces width
  set shiftwidth=2
" TAB insert 4 spaces
  set expandtab

" Start autocompletion after 4 chars
  let g:ycm_min_num_of_chars_for_completion = 4
  let g:ycm_min_num_identifier_candidate_chars = 4
  let g:ycm_enable_diagnostic_highlighting = 0

" Don't show YCM's preview window [ I find it really annoying ]
  set completeopt-=preview
  let g:ycm_add_preview_to_completeopt = 0

" ------------------------------ NERDCommenter  -------------------------------

 " Add spaces after comment delimiters by default
   let g:NERDSpaceDelims = 1

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
  
  set hidden
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

