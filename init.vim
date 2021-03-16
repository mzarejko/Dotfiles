syntax on

set clipboard=unnamedplus
set termguicolors
set encoding=UTF-8
set number
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set smartcase
set noswapfile
set nobackup
set incsearch
set hidden
set noshowmode
set cursorline

"light cursor
hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>


set laststatus=2
set t_Co=256
set background=dark
let g:python_highlight_space_errors = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                       Plugs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.config/nvim/plugged')

"gui
Plug 'paroxayte/vwm.vim'
"motion (<C-e>, <C-u>)
Plug 'yuttie/comfortable-motion.vim'

"colorscheme
Plug 'morhetz/gruvbox'
Plug 'frazrepo/vim-rainbow'
Plug 'itchyny/lightline.vim'

"Git
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'mbbill/undotree'


"Type scrypt
Plug 'leafgarland/typescript-vim'

"Docker
Plug 'ekalinin/Dockerfile.vim'
Plug 'kkvh/vim-docker-tools'

"Man 
Plug 'vim-utils/vim-man'


"Json
Plug 'elzr/vim-json'

"Files
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'


"Autocomplete
"Plug 'https://github.com/ycm-core/YouCompleteMe.git'
Plug 'https://github.com/roxma/nvim-yarp.git'
Plug 'https://github.com/roxma/vim-hug-neovim-rpc.git'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2'
"lsp
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'

"style scope
Plug 'junegunn/goyo.vim'
Plug 'https://github.com/junegunn/limelight.vim.git' 

"Python style
Plug 'https://github.com/Vimjas/vim-python-pep8-indent.git'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'jiangmiao/auto-pairs'

"R style
Plug 'jalvesaq/Nvim-R'
Plug 'gaalcaras/ncm-R'


"other language
Plug 'sheerun/vim-polyglot'

"html5
Plug 'othree/html5.vim'
Plug 'tmhedberg/matchit'

"css
Plug 'juleswang/css.vim'

"js
Plug 'pangloss/vim-javascript'
Plug 'isRuslan/vim-es6'

"Debugger
Plug 'dense-analysis/ale'
Plug 'rhysd/git-messenger.vim'
"Plug 'vim-syntastic/syntastic'
"Plug 'dbgx/lldb.nvim'

"HEX to bin
Plug 'https://github.com/glts/vim-magnum.git'
Plug 'https://github.com/glts/vim-radical.git'

"Icons
Plug 'ryanoasis/vim-devicons'


"Terminal
Plug 'tc50cal/vim-terminal'


"Javascript
Plug 'posva/vim-vue'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'leafgarland/typescript-vim'
Plug 'https://github.com/SirVer/ultisnips.git'

"tmux
Plug 'https://github.com/tpope/vim-tbone.git'

"multiple courses
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" comments
Plug 'https://github.com/preservim/nerdcommenter.git'

call plug#end()



autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect


let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ }


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"           Color
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""'
colorscheme gruvbox

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                       Maps
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = " "
"Trees
map <C-l> :NERDTreeToggle<CR>
map <C-g> :UndotreeToggle<CR>

"window toggles
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

nnoremap <silent> <leader>+ :5winc +<CR>                                                                     
nnoremap <silent> <leader>- :5winc -<CR>
nnoremap <silent> <leader>> :5winc ><CR>
nnoremap <silent> <leader>< :5winc <<CR>

" jump to definition
nnoremap <silent> <Leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <Leader>gf :YcmCompleter FixIt<CR>

" fzf
nnoremap  <leader>f :Files<CR>
nnoremap <leader>rs :Rg<CR>

"sh
map <F9> <Esc>:w<CR>:!clear;python %<CR>


"Quit
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>

"Terminal command
nnoremap <leader>tv :TerminalVSplit<CR>
nnoremap <leader>th :TerminalSplit<CR>


"lines
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv


"tmux
map <Tab><right> vap:Twrite right<CR>

" Create default mappings nerd commenter
let g:NERDCreateDefaultMappings = 1

" copy to buffer
vmap <C-c> :w! ~/.vimbuffer<CR>
nmap <C-c> :.w! ~/.vimbuffer<CR>
" paste from buffer
map <C-p> :r ~/.vimbuffer<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"           Other
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

lua require'colorizer'.setup()

lua require'nvim_lsp'.tsserver.setup{ on_attach=require'completion'.on_attach }


if executable('rg')
    let g:rg_derive_root='true'
endif

"autocomplete
let g:deoplete#enable_at_startup = 1


let loaded_matchparen = 1

"Widnows size
let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25


"Debugger
"Errors in statusline
let g:airline#extensions#ale#enabled = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_list_window_size = 5

let g:rainbow_active = 1

" undo
if has('persistent_undo')      "check if your vim version supports it
  set undofile                 "turn on the feature  
  set undodir=$HOME/.config/nvim/undo  "directory where the undo files will be stored
  endif


