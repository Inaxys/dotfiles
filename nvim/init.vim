" Author : Cyril 'Inaxys' Olivier
" Repo   : https://github.com/Inaxys/dotfiles

"=============== Neobundle =====================
set runtimepath+=~/.vim/bundle/neobundle.vim
call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundle 'Shougo/neocomplete.vim'

" Syntax
NeoBundle 'vim-scripts/SyntaxComplete'

"Colorscheme & syntax highlights
NeoBundle 'mhartington/oceanic-next'
NeoBundle 'freeo/vim-kalisi'
NeoBundle 'Yggdroot/indentLine'
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'tpope/vim-vividchalk'

"Git Helpers
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'Xuyuanp/nerdtree-git-plugin'

"Utils
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'tpope/vim-surround'   "cs-
NeoBundle 'tpope/vim-commentary' "cm-
NeoBundle 'scrooloose/syntastic' "needs more install
NeoBundle 'tmux-plugins/vim-tmux-focus-events'
NeoBundle 'tpope/vim-obsession'
NeoBundle 'garbas/vim-snipmate'
NeoBundle 'tomtom/tlib_vim'
NeoBundle 'MarcWeber/vim-addon-mw-utils'
"NeoBundle 'honza/vim-snippets'
"NeoBundle 'SirVer/ultisnips'

call neobundle#end()
filetype plugin indent on
"===============================================
"
"=============== Custom Mappings ===============
map <C-t> :NERDTreeToggle<CR>
let g:ctrlp_map = '<c-p>'

"Snippets Mapping
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"================================================

"================= Color Schemes ================
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
syntax enable
colorscheme vividchalk
set background=dark
let g:airline_theme='dark'

"air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

"airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
"================================================
"
"================== Linter ======================
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"================================================
"
"================== Settings ====================
set number
set nobackup
set noswapfile
set colorcolumn=80
set list
set listchars=tab:▸\ ,eol:¬
set expandtab
set tabstop=2
set shiftwidth=2
set smarttab
"================================================
