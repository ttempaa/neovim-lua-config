require('lualine').setup({
	options = {
		icons_enabled = true,
		theme = 'kanagawa',
		globalstatus = true,
	},
	sections = {
		lualine_a = {'mode'},
		lualine_b = {'filename'},
		lualine_c = {},
		lualine_x = {},
		lualine_y = {'filetype'},
		lualine_z = {'location'}
	},
});
