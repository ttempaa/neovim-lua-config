local status, packer = pcall(require, 'packer');

if (not status) then
	return print('Packer is not installed');
end

local onStartup = function(use)
	-- Packer
	use('wbthomason/packer.nvim');

	-- Theme
	use('kaicataldo/material.vim');
	use('rebelot/kanagawa.nvim');

	-- Status line
	use('nvim-lualine/lualine.nvim');

	-- Buffers line
	use({
		'akinsho/bufferline.nvim',
		tag = 'v2.*',
		requires = 'ryanoasis/vim-devicons'
	});

	-- Terminal
	use({
		'akinsho/toggleterm.nvim',
		tag = 'v2.*',
		config = function()
			require('toggleterm').setup({
				direction = 'float'
			})
		end
	});
	
	-- Autocomplete
	use('hrsh7th/cmp-nvim-lsp');
	use('hrsh7th/cmp-buffer');
	use('hrsh7th/cmp-path');
	use('hrsh7th/cmp-cmdline');
	use('L3MON4D3/LuaSnip');
	use('saadparwaiz1/cmp_luasnip');
	use('onsails/lspkind.nvim');
	use('rafamadriz/friendly-snippets');
	use({'hrsh7th/nvim-cmp', requires = {'saadparwaiz1/cmp_luasnip'}});

	-- Typescript
	use('leafgarland/typescript-vim');
	use('neovim/nvim-lspconfig');

	-- Nvim Tree
	use({
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons',
		},
		tag = 'nightly'
	});

	-- Prettier
	use({'prettier/vim-prettier', ['do'] = 'yarn install --frozen-lockfile --production'});

	-- Other
	use('tpope/vim-commentary');
	use('psliwka/vim-smoothie');
	use('m4xshen/autoclose.nvim');
	use('mattn/emmet-vim');

	-- Dev icons
	use('nvim-tree/nvim-web-devicons');
	use('ryanoasis/vim-devicons');
end

vim.cmd('packadd packer.nvim');

return packer.startup(onStartup);
