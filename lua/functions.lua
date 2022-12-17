local Utils = require('utils');

-- Auto pretty file on save
Utils.command([[
	autocmd BufWritePre *.ts,*.js,*.css,*.json,*.md,*.vue,*.html PrettierAsync
]]);

-- Auto show diagnostic on hover
vim.diagnostic.config({
  virtual_text = false
});

-- Restore last cursor position
Utils.command([[
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
]]);
