call plug#begin()

Plug 'editorconfig/editorconfig-vim'
Plug 'preservim/nerdtree'
"Plug 'srcery-colors/srcery-vim'
"Plug 'tek256/simple-dark'
"Plug 'ayu-theme/ayu-vim'
Plug 'NLKNguyen/papercolor-theme'
"Plug 'neomake/neomake'
"Plug 'neovim/nvim-lsp'
"Plug 'nvim-lua/completion-nvim'
"Plug 'nvim-lua/diagnostic-nvim'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/goyo.vim'
Plug 'vimwiki/vimwiki'

call plug#end()

set termguicolors
set background=light
"let ayucolor="light"   " for dark version of theme
colorscheme PaperColor
"colorscheme arctic
let g:goyo_width=80

" Better auto completion
set completeopt=menuone,noinsert,noselect
set shortmess+=c

"call neomake#configure#automake('w')

"let g:completion_enable_auto_hover = 0
"let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
"let g:completion_matching_ignore_case = 1
"
"inoremap <silent> <expr> <C-Space> completion#trigger_completion()
"
"lua << EOF
"local on_attach_vim = function()
"  require'completion'.on_attach()
"  require'diagnostic'.on_attach()
"end
"require'nvim_lsp'.clangd.setup{on_attach=on_attach_vim}
"require'nvim_lsp'.texlab.setup{on_attach=on_attach_vim}
"-- require'nvim_lsp'.sumneko_lua.setup{on_attach=on_attach_vim}
"EOF
"
"" Switch buffers with Shift-N and Shift-P
"" Reminder: use Ctrl-O and Ctrl-I for jump locations
"
"nnoremap <silent> H :PrevDiagnosticCycle<CR>
"nnoremap <silent> L :NextDiagnosticCycle<CR>
"
"nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
"nnoremap <silent> J     <cmd>ClangdSwitchSourceHeader<CR>
"nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
"nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>


" Always enable gutter
set signcolumn=yes

" Some standard options
set nocompatible
set noswapfile
set autoindent
set smartindent
set encoding=utf-8
set linebreak

" Move between splits without the w key
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

set splitbelow splitright

"imap <c-j> <c-n>
"imap <c-k> <c-p>


" Open the file manager
nmap <silent> <space>j :NERDTreeToggle<CR>
let NERDTreeShowHidden = 1
