source ~/.config/nvim/plugin.vim
source ~/.config/nvim/general_setups.vim
source ~/.config/nvim/lsp.vim
source ~/.config/nvim/cmp.vim
source ~/.config/nvim/tree-sitter.vim
source ~/.config/nvim/bufferline.vim

set clipboard=unnamedplus
set number
set relativenumber
set shiftwidth=4
hi normal ctermbg=none guibg=none

let mapleader = " "

"don't judge me ;)
cnoremap W w
cnoremap Q q
tnoremap <Esc> <C-\><C-n>

"emmet html...
let g:user_emmet_leader_key='<C-s>'

"jdtls mapings
nnoremap <A-i> <Cmd>lua require'jdtls'.organize_imports()<CR>
nnoremap crv <Cmd>lua require('jdtls').extract_variable()<CR>
vnoremap crv <Esc><Cmd>lua require('jdtls').extract_variable(true)<CR>
nnoremap crc <Cmd>lua require('jdtls').extract_constant()<CR>
vnoremap crc <Esc><Cmd>lua require('jdtls').extract_constant(true)<CR>
vnoremap crm <Esc><Cmd>lua require('jdtls').extract_method(true)<CR>

"code actions
nnoremap <A-a> <Cmd>lua vim.lsp.buf.code_action()<CR>

nnoremap <leader>f :Telescope find_files<CR>
nnoremap <leader>g :Telescope live_grep<CR>
nnoremap <leader>b :Telescope buffers<CR>
nnoremap <leader>c :Telescope commands<CR>
nnoremap <leader>s :SessionSearch<CR>
nnoremap <leader>e :NvimTreeFindFileToggle<CR>

"terminal mapings
nnoremap <leader>t :ToggleTerm<CR>
    
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
nnoremap <leader>q :bdelete<CR>

nnoremap <leader>h <c-w>h
nnoremap <leader>j <c-w>j
nnoremap <leader>k <c-w>k
nnoremap <leader>l <c-w>l

nnoremap <leader>v :vs<CR>
nnoremap <leader>p :sp<CR>
nnoremap <leader>rk <c-w>10-
nnoremap <leader>rj <c-w>10+
nnoremap <leader>rh <c-w>10<
nnoremap <leader>rl <c-w>10>

nnoremap <C-k> :lua vim.lsp.buf.hover()<CR>
nnoremap <C-j> :lua vim.diagnostic.open_float()<CR>
