call plug#begin()

Plug 'editorconfig/editorconfig-vim'
Plug 'preservim/nerdtree'
Plug 'srcery-colors/srcery-vim'
Plug 'neovim/nvim-lsp'
Plug 'nvim-lua/completion-nvim'
Plug 'nvim-lua/diagnostic-nvim'
Plug 'airblade/vim-gitgutter'

call plug#end()

colorscheme srcery

" Better auto completion
set completeopt=menuone,noinsert,noselect
set shortmess+=c

let g:completion_enable_auto_hover = 0
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
let g:completion_matching_ignore_case = 1

inoremap <silent> <expr> <C-Space> completion#trigger_completion()

" Setup the clangd language server
" To setup the sumneko_lua server, first :LspInstall sumneko_lua, then if it
" doesn't work, go to ~/.cache/nvim/nvim_lsp/sumneko_lua/lua-language-server
" in ./main.lua set rootPath to the path of the repo in 
" ./test.lua comment out everything except the last line, in
" ./3rd/bee.lua/test/test.lua and 3rd/luamake/3rd/bee.lua/test/test.lua do the same.
" If you did everything right then run
" cd 3rd/luamake
" ninja -f ninja/linux.ninja
" cd ../..
" ./3rd/luamake/luamake
lua << EOF
local on_attach_vim = function()
  require'completion'.on_attach()
  require'diagnostic'.on_attach()
end
require'nvim_lsp'.clangd.setup{on_attach=on_attach_vim}
require'nvim_lsp'.sumneko_lua.setup{on_attach=on_attach_vim}
EOF


" Always enable gutter
set signcolumn=yes

" Some standard options
set nocompatible
set noswapfile
set autoindent
set smartindent
set encoding=utf-8

" Move between splits without the w key
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Switch buffers with Shift-N and Shift-P
" Reminder: use Ctrl-O and Ctrl-I for jump locations

nnoremap <silent> H :PrevDiagnosticCycle<CR>
nnoremap <silent> L :NextDiagnosticCycle<CR>

nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> J     <cmd>ClangdSwitchSourceHeader<CR>
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>

" Open the file manager
nmap <silent> <space>j :NERDTreeToggle<CR>
let NERDTreeShowHidden = 1
