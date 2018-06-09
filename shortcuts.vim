"
"       ███████╗██╗  ██╗ ██████╗ ██████╗ ████████╗ ██████╗██╗   ██╗████████╗███████╗
"       ██╔════╝██║  ██║██╔═══██╗██╔══██╗╚══██╔══╝██╔════╝██║   ██║╚══██╔══╝██╔════╝
"       ███████╗███████║██║   ██║██████╔╝   ██║   ██║     ██║   ██║   ██║   ███████╗
"       ╚════██║██╔══██║██║   ██║██╔══██╗   ██║   ██║     ██║   ██║   ██║   ╚════██║
"       ███████║██║  ██║╚██████╔╝██║  ██║   ██║   ╚██████╗╚██████╔╝   ██║   ███████║
"       ╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝   ╚═╝    ╚═════╝ ╚═════╝    ╚═╝   ╚══════╝

" ------------------------------ System Mappings ------------------------------

" ESC to jk
imap jk <ESC>

" Map leader
map <SPACE> <leader>

" <Ctrl-b> indent all the code
noremap <C-b> gg=G

" Map move cursor
map H 0  
map L $
map J 5j
map K 5k

" Leader working with the windows
noremap <leader>w   <C-w>

" Leader working with the file finder
noremap <leader>f   :Files<CR>

" Leader working with the lines finder
noremap <leader>l   :Lines<CR>

" Leader + tab to change to previous buffer
noremap <leader><TAB>   :b#<CR>

" Show NERDTree
map XX :NERDTreeToggle <CR>

" Exit the terminal with esc
tnoremap jk <C-\><C-n>

" Select all in visual mode
map <C-a> <esc>ggVG<CR>
