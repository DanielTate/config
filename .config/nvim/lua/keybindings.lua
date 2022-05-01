local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}

-- Move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h', default_opts)
map('n', '<C-j>', '<C-w>j', default_opts)
map('n', '<C-k>', '<C-w>k', default_opts)
map('n', '<C-l>', '<C-w>l', default_opts)

-- Move between tabs
map('n', 'tl', ':tabnext<CR>', default_opts)
map('n', 'th', ':tabprev<CR>', default_opts)
map('n', 'tn', ':tabnext<CR>', default_opts)
map('n', 'tc', ':tabclose<CR>', default_opts)
map('n', 'tm', ':tabmove<CR>', default_opts)
map('n', 'to', ':tabonly<CR>', default_opts)

-- LSP Keybindings
map('n', 'gd', ':lua vim.lsp.buf.definition()<CR>', default_opts)
map('n', 'gD', ':lua vim.lsp.buf.declaration()<CR>', default_opts)
map('n', 'gr', ':lua vim.lsp.buf.refrences()<CR>', default_opts)
map('n', 'gi', ':lua vim.lsp.buf.implementation()<CR>', default_opts)
map('n', 'K', ':Lspsaga hover_doc<CR>', default_opts)
map('n', '<C-k>', ':lua vim.lsp.buf.signature_help()<CR>', default_opts)
map('n', '<C-,>', ':Lspsaga diagnostic_jump_prev<CR>', default_opts)
map('n', '<C-.>', ':Lspsaga diagnostic_jump_next<CR>', default_opts)
map('n', 'gf', ':lua vim.lsp.buf.formatting()<CR>', default_opts)
map('n', 'gn', ':lua vim.lsp.buf.rename()<CR>', default_opts)
map('n', 'ga', ':Lspsaga code_action<CR>', default_opts)
-- map('n', 'ga', ':Lspsaga range_code_action<CR>', default_opts)
-- nnoremap <silent> ga    <cmd>Lspsaga range_code_action<CR>
-- nnoremap <silent> gs    <cmd>Lspsaga signature_help<CR>

-- Telescope Keybindings
map('n', '<C-p>', ':Telescope find_files<CR>', default_opts)
map('n', '<leader>m', ':Telescope oldfiles<CR>', default_opts)
map('n', "<leader>rg", ':Telescope live_grep<CR>', default_opts)
map('n', '<leader>;', ':Telescope buffers<CR>', default_opts)
-- I never use these
-- map('n', '<leader>p', ':Telescope find_files<CR>', default_opts)
-- map('n', '<leader>pp', ':Telescope builtin<CR>', default_opts)
-- map('n', '<leader>;', ':Telescope buffers<CR>', default_opts)
-- map('n', '<leader>/', ':Telescope current_buffer_fuzzy_find<CR>', default_opts)
-- map('n', "<leader>'", ':Telescope marks<CR>', default_opts)
-- map('n', "<leader>f", ':Telescope git_files<CR>', default_opts)
-- map('n', "<leader>cs", ':Telescope colorscheme<CR>', default_opts)

-- Telescope Keybindings
map('n', '<C-i>', ':PackerUpdate<CR>', default_opts)

-- Lua Tree
map('n', '<C-b>', ':NvimTreeToggle<CR>', default_opts)

-- Open terminal
map('n', '<C-t>', ':Term<CR>', default_opts)

-- map('n', '<Esc>', '<C-c>', default_opts)

-- Comments
map('n', '<leader>/', ':CommentToggle<CR>', default_opts)
map('n', '<leader>c', ':NERDCommenterToggle<CR>', default_opts)
