require("luasnip.loaders.from_vscode").lazy_load()
local cmp = require('cmp');
local lspkind = require('lspkind');
local luasnip = require('luasnip');

cmp.setup({
	appearance = {
		menu = {
			direction = 'below'
		}
	},
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end
	},
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered()
	},
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'luasnip' }
	}, {
		{ name = 'buffer' }
	}),
	mapping = cmp.mapping.preset.insert({
		['<C-Up>'] = cmp.mapping.scroll_docs(-2),
		['<C-Down>'] = cmp.mapping.scroll_docs(2),
		['<C-Space>'] = cmp.mapping.abort(),
		['<Tab>'] = cmp.mapping.confirm({ select = true })
	}),
	formatting = {
		format = lspkind.cmp_format({
			with_text = true,
			menu = {
				buffer = "[buf]",
				nvim_lsp = "[LSP]",
				path = "[path]",
			},
		}),
	},
});

