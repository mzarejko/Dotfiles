set nocompatible
syntax on
filetype off

set completeopt=menuone,noselect
set smarttab
set shiftround
set clipboard=unnamedplus
set number
set numberwidth=2
set noerrorbells
set shiftwidth=2
set expandtab
set smartindent
set nowrap
set smartcase
set noswapfile
set nobackup
set hidden
set noshowmode
set termguicolors
set mouse=a
set textwidth=100
set ruler
set ignorecase
set splitbelow
set splitright
set signcolumn=yes
set cmdheight=1

"cursore line color
set cursorline
hi clear CursorLine
augroup CLClear
    autocmd! ColorScheme * hi clear CursorLine
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                       "Plugs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.config/nvim/plugged')

Plug 'wadackel/vim-dogrun'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'josa42/nvim-lightline-lsp'
Plug 'EdenEast/nightfox.nvim'

Plug 'kyazdani42/nvim-web-devicons'
Plug 'akinsho/nvim-bufferline.lua'

Plug 'itchyny/lightline.vim'
Plug 'jdhao/better-escape.vim'

Plug 'norcalli/nvim-colorizer.lua'
"Plug 'mbbill/undotree'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
"Plug 'p00f/nvim-ts-rainbow'
"Plug 'junegunn/rainbow_parentheses.vim'
Plug 'luochen1990/rainbow'

Plug 'windwp/nvim-autopairs'

Plug 'kyazdani42/nvim-web-devicons'

Plug 'andymass/vim-matchup'

"Type scrypt highlight
Plug 'leafgarland/typescript-vim'

"Man
"Plug 'vim-utils/vim-man'

"Json
Plug 'elzr/vim-json'

"Files
Plug 'preservim/nerdtree'

"API design
Plug 'IN3D/vim-raml'

"LSP
Plug 'neovim/nvim-lspconfig'
Plug 'kabouzeid/nvim-lspinstall'
Plug 'onsails/lspkind-nvim'
"Plug 'ray-x/lsp_signature.nvim'


"Autocomplete
Plug 'roxma/nvim-yarp'
"Plug 'https://github.com/roxma/vim-hug-neovim-rpc.git'
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'deoplete-plugins/deoplete-jedi'
"Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
Plug 'ncm2/ncm2'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
"Plug 'nvim-lua/completion-nvim'
Plug 'hrsh7th/nvim-compe'
Plug 'rafamadriz/friendly-snippets'
"Plug 'hrsh7th/vim-vsnip'
"Plug 'prabirshrestha/vim-lsp'
"Plug 'rhysd/vim-lsp-ale'

"style scope
"Plug 'junegunn/goyo.vim'
Plug 'lukas-reineke/indent-blankline.nvim'

"Python style
Plug 'https://github.com/Vimjas/vim-python-pep8-indent.git'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
"Plug 'jiangmiao/auto-pairs'

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
Plug 'nvim-telescope/telescope-dap.nvim'
Plug 'mfussenegger/nvim-dap'
Plug 'mfussenegger/nvim-dap-python'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

"HEX to bin
"Plug 'https://github.com/glts/vim-magnum.git'
"Plug 'https://github.com/glts/vim-radical.git'

"Icons
"Plug 'ryanoasis/vim-devicons'


"Javascript

"multiple courses
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" comments
Plug 'https://github.com/preservim/nerdcommenter.git'

" xml
Plug 'othree/xml.vim'

" robotframework
"Plug 'mfukar/robotframework-vim'

" docker
Plug 'ekalinin/Dockerfile.vim'


"note
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'ekickx/clipboard-image.nvim'
Plug 'plasticboy/vim-markdown'
Plug 'vim-pandoc/vim-pandoc-syntax'

call plug#end()



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"           THEME
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""'

if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
set termguicolors

set background=dark

let g:lightline = {
      \ 'colorscheme': 'palenight',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste', 'lsp_info', 'lsp_hints', 'lsp_errors', 'lsp_warnings', 'lsp_ok' ],
      \             [ 'readonly', 'filename', 'modified', 'helloworld', 'lsp_status' ] ]
      \ }
      \ }

colorscheme nightfox

" register compoments:
call lightline#lsp#register()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                       Maps
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = " "

"other
map("v", "p", '"_dP', opt)
map("", "j", 'v:count ? "j" : "gj"', {expr = true})
map("", "k", 'v:count ? "k" : "gk"', {expr = true})
map("", "<Down>", 'v:count ? "j" : "gj"', {expr = true})
map("", "<Up>", 'v:count ? "k" : "gk"', {expr = true})

"toggle numbers
map("n", "<leader>n", ":set nu!<CR>", opt)

"Commenter Keybinding
map("n", "<leader>/", ":CommentToggle<CR>", opt)
map("v", "<leader>/", ":CommentToggle<CR>", opt)

"Nerd tree
nnoremap <C-t> :NERDTreeToggle<CR>


"Quit
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>

" copy to buffer
vmap <C-c> :w! ~/.vimbuffer<CR>
nmap <C-c> :.w! ~/.vimbuffer<CR>
" paste from buffer
map <C-p> :r ~/.vimbuffer<CR>

"lines
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" These commands will navigate through buffers in order regardless of which mode you are using
" e.g. if you change the order of buffers :bnext and :bprevious will not respect the custom ordering
nnoremap <C-j> :BufferLineCycleNext<CR>
nnoremap <C-k> :BufferLineCyclePrev<CR>


map <C-i> :lua vim.lsp.buf.hover()<CR>

"debug
nnoremap <silent> <F5> :lua require'dap'.continue()<CR>
nnoremap <silent> <leader>dd :lua require('dap').continue()<CR>
nnoremap <silent> <F10> :lua require'dap'.step_over()<CR>
nnoremap <silent> <F11> :lua require'dap'.step_into()<CR>
nnoremap <silent> <F12> :lua require'dap'.step_out()<CR>
nnoremap <silent> <leader>b :lua require'dap'.toggle_breakpoint()<CR>
nnoremap <silent> <leader>B :lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>
nnoremap <silent> <leader>lp :lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>
nnoremap <silent> <leader>dr :lua require'dap'.repl.open()<CR>
nnoremap <silent> <leader>dl :lua require'dap'.repl.run_last()<CR>`
nnoremap <silent> <leader>dn :lua require('dap-python').test_method()<CR>
vnoremap <silent> <leader>ds <ESC>:lua require('dap-python').debug_selection()<CR>


" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

""""""""""""""""""""""Better ESCAPE"""""""""""""""""""""""""""""
let g:better_escape_shortcut = 'jk'
let g:better_escape_interval = 200

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                 ALE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
highlight link ALEError SpellBad

let g:ale_sign_error = ' '
let g:ale_sign_warning = ' '
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
let g:ale_completion_autoimport = 1

let g:ale_fixers = {
    \ '*': ['remove_trailing_lines', 'trim_whitespace'],
    \ 'javascript' : ['eslint']
\}

let g:ale_linters = {
\   'javascript': ['tsserver'],
\   'python' : ['flake8'],
\}

let g:airline#extensions#ale#enabled = 1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""MARKDOWN"""""""""""""""""""""""""""""""""""""

" disable header folding
let g:vim_markdown_folding_disabled = 1

" do not use conceal feature, the implementation is not so good
let g:vim_markdown_conceal = 0

" disable math tex conceal feature
let g:tex_conceal = ""
let g:vim_markdown_math = 1

" support front matter of various format
let g:vim_markdown_frontmatter = 1  " for YAML format
let g:vim_markdown_toml_frontmatter = 1  " for TOML format
let g:vim_markdown_json_frontmatter = 1  " for JSON format

augroup pandoc_syntax
    au! BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc
augroup END


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:loaded_matchit = 1

"rainbow
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

"markdown
"let g:vim_markdown_conceal = 0
"let g:vim_markdown_conceal_code_blocks = 0

autocmd BufEnter * call ncm2#enable_for_buffer()

lua require'colorizer'.setup()
let g:indentLine_char_list = ['▏', '┊', '┊', '┊', '┊' , '┊' , '┊' , '┊' , '┊' , '┊' , '┊' , '┊' ]

"Widnows size
let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25

let g:matchup_matchparen_offscreen = {'method': 'popup'}

" undo
if has('persistent_undo')      "check if your vim version supports it
  set undofile                 "turn on the feature
  set undodir=$HOME/.config/nvim/undo  "directory where the undo files will be stored
  endif
" run sparkup on js file
runtime! ftplugin/html/sparkup.vim

filetype plugin on
"""""""""""""""""""""""""""LSP"""""""""""""""""""""""""""""
highlight LspDiagnosticsDefaultError guifg=#E54242
highlight LspDiagnosticsVirtualTextError guifg=#565c64

highlight LspDiagnosticsDefaultInformation guifg=#0094B3
highlight LspDiagnosticsVirtualTextInformation guifg=#565c64

highlight LspDiagnosticsDefaultHint guifg=#E6BF00
highlight LspDiagnosticsVirtualTextHint guifg=#565c64

highlight LspDiagnosticsDefaultWarning guifg=#F29940
highlight LspDiagnosticsVirtualTextWarning guifg=#565c64


""""""""""""""""""""""""""" LUA """""""""""""""""""""""""""


lua << EOF
require("bufferline").setup{
    options = {
        offsets = {{filetype = "NvimTree", text = "", padding = 1}},
        buffer_close_icon = "",
        modified_icon = "",
        left_trunc_marker = "",
        right_trunc_marker = "",
        max_name_length = 14,
        max_prefix_length = 13,
        tab_size = 20,
        show_tab_indicators = true,
        enforce_regular_tabs = false,
        view = "multiwindow",
        show_buffer_close_icons = true,
        separator_style = "thin",
        mappings = true,
        always_show_bufferline = true
    },
    highlights = {
        fill = {
            guifg = "#565c64",
            guibg = "#1e222a"
        },
        background = {
            guifg = "#565c64",
            guibg = "#252931"
        },
        -- buffers
        buffer_visible = {
            guifg = "#6f737b",
            guibg = "#252931"
        },
        buffer_selected = {
            guifg = "#abb2bf",
            guibg = "#1e222a",
            gui = "bold"
        },
        -- tabs
        tab = {
            guifg = "#6f737b",
            guibg = "#30343c"
        },
        tab_selected = {
            guifg = "#252931",
            guibg = "#81A1C1"
        },
        tab_close = {
            guifg = "#c792ea",
            guibg = "#1e222a"
        },
        indicator_selected = {
            guifg = "#1e222a",
            guibg = "#1e222a"
        },
        -- separators
        separator = {
            guifg = "#252931",
            guibg = "#252931"
        },
        separator_visible = {
            guifg = "#252931",
            guibg = "#252931"
        },
        separator_selected = {
            guifg = "#252931",
            guibg = "#252931"
        },
        -- modified
        modified = {
            guifg = "#c792ea",
            guibg = "#252931"
        },
        modified_visible = {
            guifg = "#c792ea",
            guibg = "#252931"
        },
        modified_selected = {
            guifg = "#A3BE8C",
            guibg = "#1e222a"
        },
        -- close buttons

        close_button = {
            guifg = "#6f737b",
            guibg = "#252931"
        },
        close_button_visible = {
            guifg = "#6f737b",
            guibg = "#252931"
        },
        close_button_selected = {
            guifg =  "#c792ea",
            guibg = "#1e222a"
        }
    }
}

require'lspconfig'.pyright.setup{}
require'lspconfig'.tsserver.setup{}

local function setup_servers()
    require'lspinstall'.setup()
    local servers = require'lspinstall'.installed_servers()
    for _, lang in pairs(servers) do
        if lang ~= "lua" then
            lspconfig[lang].setup {
                on_attach = on_attach,
                capabilities = capabilities,
                root_dir = vim.loop.cwd
            }
        elseif lang == "lua" then
            lspconfig[lang].setup {
                root_dir = vim.loop.cwd,
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = {"vim"}
                        },
                        workspace = {
                            library = {
                                [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                                [vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true
                            },
                            maxPreload = 100000,
                            preloadFileSize = 10000
                        },
                        telemetry = {
                            enable = false
                        }
                    }
                }
            }
      end
    end
end

setup_servers()

  
require'lspinstall'.post_install_hook = function ()
  setup_servers() -- reload installed servers
  vim.cmd("bufdo e") -- this triggers the FileType autocmd that starts the server
end

function lspSymbol(name, icon)
    vim.fn.sign_define("LspDiagnosticsSign" .. name, {text = icon, numhl = "LspDiagnosticsDefaul" .. name})
end

lspSymbol("Error", " ")
lspSymbol("Warning", " ")
lspSymbol("Information", "")
lspSymbol("Hint", "")



vim.lsp.handlers["textDocument/publishDiagnostics"] =
    vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics,{
        virtual_text = false,
        underline = true,
        signs = true,
    }
)


vim.notify = function(msg, log_level, _opts)
    if msg:match("exit code") then
        return
    end
    if log_level == vim.log.levels.ERROR then
        vim.api.nvim_err_writeln(msg)
    else
        vim.api.nvim_echo({{msg}}, true, {})
    end
end



require('lspkind').init({
    -- enables text annotations
    --
    -- default: true
    with_text = true,

    -- default symbol map
    -- can be either 'default' or
    -- 'codicons' for codicon preset (requires vscode-codicons font installed)
    --
    -- default: 'default'
    preset = 'codicons',

    -- override preset symbols
    --
    -- default: {}
    symbol_map = {
      Text = "",
      Method = "",
      Function = "",
      Constructor = "",
      Field = "ﰠ",
      Variable = "",
      Class = "ﴯ",
      Interface = "",
      Module = "",
      Property = "ﰠ",
      Unit = "塞",
      Value = "",
      Enum = "",
      Keyword = "",
      Snippet = "",
      Color = "",
      File = "",
      Reference = "",
      Folder = "",
      EnumMember = "",
      Constant = "",
      Struct = "פּ",
      Event = "",
      Operator = "",
      TypeParameter = ""
    },
})


--- require "lsp_signature".setup(
---            {
---                bind = true,
---                doc_lines = 2,
---                floating_window = true,
---                fix_pos = true,
---                hint_enable = true,
---                hint_prefix = " ",
---                hint_scheme = "String",
---                use_lspsaga = false,
---                hi_parameter = "Search",
---                max_height = 22,
---                padding = '',
---                max_width = 120, -- max_width of signature floating_window, line will be wrapped if exceed max_width
---                handler_opts = {
---                    border = "single" -- double, single, shadow, none
---               },
---                zindex = 200, -- by default it will be on top of all floating windows, set to 50 send it to bottom
---                padding = "" -- character to pad on left and right of signature can be ' ', or '|'  etc
---            }
---
---)


require'compe'.setup {
  enabled = true;
  autocomplete = true;
  debug = false;
  min_length = 1;
  preselect = 'enable';
  throttle_time = 80;
  source_timeout = 200;
  resolve_timeout = 800;
  incomplete_delay = 400;
  max_abbr_width = 100;
  max_kind_width = 100;
  max_menu_width = 100;
  documentation = {
    border = { '', '' ,'', ' ', '', '', '', ' ' }, -- the border option is the same as `|help nvim_open_win|`
    winhighlight = "NormalFloat:CompeDocumentation,FloatBorder:CompeDocumentationBorder",
    max_width = 120,
    min_width = 60,
    max_height = math.floor(vim.o.lines * 0.3),
    min_height = 1,
  };

  source = {
    path = true;
    buffer = true;
    calc = true;
    nvim_lsp = true;
    nvim_lua = true;
    vsnip = true;
    ultisnips = true;
    luasnip = true;
  };
}



require'nvim-web-devicons'.setup {
 -- your personnal icons can go here (to override)
 -- DevIcon will be appended to `name`
 override = {
  zsh = {
    icon = "",
    color = "#428850",
    name = "Zsh"
  }
 };
 -- globally enable default icons (default to false)
 -- will get overriden by `get_icons` option
 default = true;
}


require('nvim-autopairs').setup{}


--- require'nvim-treesitter.configs'.setup {
---  rainbow = {
---    enable = true,
---    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
---    max_file_lines = 1000, -- Do not enable for files with more than 1000 lines, int
---    colors = {}, -- table of hex strings
---    termcolors = {} -- table of colour name strings
---  }
---}


require('telescope').load_extension('dap')
require('dap-python').setup('/mnt/diskD/anaconda3/envs/ml/bin/python')


EOF


autocmd CursorHold * lua vim.lsp.diagnostic.show_line_diagnostics()
