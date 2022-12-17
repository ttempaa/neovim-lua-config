local Utils = require('utils');

Utils.global('loaded_netrw', 1);
Utils.global('loaded_netrwPlugin', 1);
Utils.option('termguicolors', true);

require('nvim-tree').setup({
	sort_by = 'case_sensitive',
	view = {
		adaptive_size = true,
		mappings = {
			list = {},
		},
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = false,
	},
})
