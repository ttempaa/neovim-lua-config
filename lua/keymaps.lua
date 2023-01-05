local Utils = require('utils');

-- NERDTree
Utils.keymap('n', '<C-n>', ':NvimTreeToggle<CR>');
Utils.keymap('n', '<Leader>nf', ':NvimTreeFindFile<CR>');

-- Buffer
Utils.keymap('n', '<Leader>bc', ':bd<CR>');
Utils.keymap('n', '<Leader>bca', ':bufdo bd<CR>');
Utils.keymap('n', '<Leader>bl', ':bnext<CR>');
Utils.keymap('n', '<Leader>bh', ':bprevious<CR>');

-- Line move
Utils.keymap('n', '<S-j>', ':m .+1<CR>==');
Utils.keymap('n', '<S-k>', ':m .-2<CR>==');
Utils.keymap('v', '<S-j>', ":m '>+1<CR>gv=gv");
Utils.keymap('v', '<S-k>', ":m '<-2<CR>gv=gv");

-- Line copy
Utils.keymap('n', '<Leader>lc', 'yyP<CR>');

-- Code diagnostic
Utils.keymap('n', '<Leader>di', '<cmd>lua vim.diagnostic.open_float(nil, {focus=false})<CR>');

-- Terminal
Utils.keymap('t', '<Esc>', '<C-\\><C-n>');
Utils.keymap('n', '<C-t>', ':ToggleTerm<CR>');
Utils.keymap('i', '<C-t>', ':ToggleTerm<CR>');

-- Go to definition
Utils.keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>');
