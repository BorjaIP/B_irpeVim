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
" Write :w to save in insert mode
imap <silent> :w <C-o>:w<CR>
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
vnoremap gh <ESC>
" Leader + b to format code, requires formatters: read the docs
noremap <leader>b :Neoformat<CR>

" ------------------------------    Summary    ----------------------------------
" Ctrl-b = Indent the code
" XX = Open NERDTree
" jk = Esc to exit the terminal enabled
" jk = Esc to form of vim
" Space-c-i = dis/comment the current line
" Space-f = Search for files in the directory
" Space-l = Search word in the file and show the line
" Space-w = Working with the windows
" :term = Opens the terminal
" m = To create a file in the NERDTree
