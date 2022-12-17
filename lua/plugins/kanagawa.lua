require('kanagawa').setup({
	undercurl = true,
	commentStyle = { italic = false },
	functionStyle = {},
	keywordStyle = { italic = false },
	statementStyle = { bold = true },
	typeStyle = {},
	variablebuiltinStyle = { italic = false },
	specialReturn = true,
	specialException = true,
	transparent = false,
	dimInactive = false,
	globalStatus = false,
	terminalColors = true,
	colors = {},
	overrides = {},
	theme = 'default'
});

vim.cmd('colorscheme kanagawa');
