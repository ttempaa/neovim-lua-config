require('lspconfig').tsserver.setup({
	capabilities = require('cmp_nvim_lsp').default_capabilities();
});

require('lspconfig').rust_analyzer.setup({})
