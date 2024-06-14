call plug#begin()

"gcc to toggle comment for a line	
"gc to toggle comment for a block of code
Plug 'tpope/vim-commentary'

"shows a git diff in the gutter
Plug 'airblade/vim-gitgutter'

"git wrapper
Plug 'tpope/vim-fugitive'

"show the indent level
Plug 'yggdroot/indentline'

"modify surrounding characters
"example : cs"' to change surrounding " to '
Plug 'tpope/vim-surround'

"easymotion - jump to any character in the screen
"leader = \
"custom key for search = è
Plug 'easymotion/vim-easymotion'

"vim-sensible : useful defaults for vim
Plug 'tpope/vim-sensible'

"NERDTree and complementary plugins : file explorer 
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'PhilRunninger/nerdtree-visual-selection'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'

"status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'enricobacis/vim-airline-clock'

"colorschemes
Plug 'rafi/awesome-vim-colorschemes'

"multiple cursors
"ctrl-n to select the word under the cursor
"ctrl-p to select the previous word
Plug 'terryma/vim-multiple-cursors'
call plug#end()

"easymotion mappings
map <Leader> <Plug>(easymotion-prefix)
map è <Plug>(easymotion-s)

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:indentLine_setColors = 0

"command key remap for canadian multilingual keyboard
nnoremap ; :
set number


"if it is nvim-qt

if has("gui_running")
    set guifont=MesloLGS\ NF:h12
    colorscheme lucid
    autocmd VimEnter AirlineTheme base16
else
    colorscheme default
endif

