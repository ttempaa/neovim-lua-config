local Utils = require('utils');

-- General
Utils.global('mapleader', ' ');
Utils.option('mouse', 'a');
Utils.option('hidden', true);
Utils.option('scrolloff', 4);
Utils.option('conceallevel', 0);
Utils.global('vim_json_syntax_conceal', 0);
Utils.option('clipboard', 'unnamedplus');
Utils.option('colorcolumn', '90');
Utils.option('completeopt', 'menu,menuone,noselect');

-- Style
Utils.option('background', 'dark');
Utils.option('showtabline', 0);
Utils.global('indentLine_setColors', 0);
Utils.command('colorscheme kanagawa');

-- Interface
Utils.option('number', true);
Utils.option('title', true);
Utils.option('cursorline', true);
Utils.option('updatetime', 100);
Utils.option('termguicolors', true);
Utils.option('pumheight', 10);
Utils.option('list', true);
Utils.option('lcs', 'tab:¦ ');

-- Tabs
Utils.option('autoindent', false);
Utils.option('smartindent', true);
Utils.option('smarttab', true);
Utils.option('expandtab', false);
Utils.option('tabstop', 2);
Utils.option('softtabstop', 2);
Utils.option('shiftwidth', 2);

-- Plugins
Utils.global('deoplete#enable_at_startup', 1);
Utils.global('prettier#quickfix_enabled', 0);
Utils.global('prettier#config#single_quote', 'true');
Utils.global('prettier#config#print_width', 90);
