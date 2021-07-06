set nocompatible
syntax on
filetype indent on

set smartindent
set clipboard=unnamedplus
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
set termguicolors

"light cursor
hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>


set laststatus=2
set t_Co=256
let g:python_highlight_space_errors = 0

execute "set t_8f=\e[38;2;%lu;%lu;%lum"
execute "set t_8b=\e[48;2;%lu;%lu;%lum"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                       Plugs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.config/nvim/plugged')

"gui
"Error not work with Vim zsh!!!
"Plug 'paroxayte/vwm.vim'

" not helpfull
"motion (<C-e>, <C-u>)

"colorscheme
"Plug 'morhetz/gruvbox'
"Plug 'overcache/NeoSolarized'
Plug 'sonph/onehalf', { 'rtp': 'vim' }

" not work with full coolor scheme
"Plug 'frazrepo/vim-rainbow'
Plug 'itchyny/lightline.vim'
Plug 'arcticicestudio/nord-vim'

"Git
"Plug 'https://github.com/tpope/vim-fugitive.git'

" tree for git
Plug 'mbbill/undotree'


"Type scrypt highlight
Plug 'leafgarland/typescript-vim'

"Docker
"not helpfull
"Plug 'ekalinin/Dockerfile.vim'
"Plug 'kkvh/vim-docker-tools'

"Man 
Plug 'vim-utils/vim-man'

"tests 
"not helpfull
Plug 'https://github.com/alfredodeza/pytest.vim.git'

"Json
Plug 'elzr/vim-json'

"Files
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'airblade/vim-rooter'

"API design
Plug 'IN3D/vim-raml'


"Autocomplete
"Plug 'https://github.com/ycm-core/YouCompleteMe.git'
Plug 'roxma/nvim-yarp'
Plug 'https://github.com/roxma/vim-hug-neovim-rpc.git'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}           

"lsp
Plug 'ncm2/ncm2'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'

"style scope
Plug 'junegunn/goyo.vim'
Plug 'https://github.com/junegunn/limelight.vim.git' 
Plug 'Yggdroot/indentLine'

"Python style
Plug 'https://github.com/Vimjas/vim-python-pep8-indent.git'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'jiangmiao/auto-pairs'

"R style
"Plug 'jalvesaq/Nvim-R'
"Plug 'gaalcaras/ncm-R'


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

"HEX to bin
Plug 'https://github.com/glts/vim-magnum.git'
Plug 'https://github.com/glts/vim-radical.git'

"Icons
Plug 'ryanoasis/vim-devicons'


"Terminal
Plug 'tc50cal/vim-terminal'


"Javascript
"Plug 'posva/vim-vue'
Plug 'norcalli/nvim-colorizer.lua'
"Plug 'leafgarland/typescript-vim'
"Plug 'https://github.com/SirVer/ultisnips.git'

"tmux
Plug 'https://github.com/tpope/vim-tbone.git'

"multiple courses
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" comments
Plug 'https://github.com/preservim/nerdcommenter.git'

" xml
Plug 'othree/xml.vim'
"Plug 'tpope/vim-ragtag'
"Plug 'tpope/vim-surround'

" robotframework
Plug 'mfukar/robotframework-vim'

" LaTeX
Plug 'lervag/vimtex'

call plug#end()



autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect


let g:lightline = {
      \ 'colorscheme': 'one',
      \ }


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"           Color
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""'
"colorscheme gruvbox
"colorscheme iceberg
set background=dark
colorscheme onehalfdark
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                       Maps
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = " "
"Trees
nnoremap <C-l> :NERDTreeToggle<CR>
nnoremap <C-g> :UndotreeToggle<CR>

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
map <F5> <Esc>:w<CR>:!clear;python %<CR>


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

" Pytest
nmap <silent><Leader>f <Esc>:Pytest file<CR>
nmap <silent><Leader>c <Esc>:Pytest class<CR>
nmap <silent><Leader>m <Esc>:Pytest method<CR>



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"           Other
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

lua require'colorizer'.setup()


let g:indentLine_char_list = ['▏', '┊', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']

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


"autocmd BufEnter * call ncm2#enable_for_buffer()
" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect

" undo
if has('persistent_undo')      "check if your vim version supports it
  set undofile                 "turn on the feature  
  set undodir=$HOME/.config/nvim/undo  "directory where the undo files will be stored
  endif

" run sparkup on js file
runtime! ftplugin/html/sparkup.vim

filetype plugin on

