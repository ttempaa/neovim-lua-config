local Utils = {};

function Utils.option(key, value)
	vim.opt[key] = value;
	return value;
end

function Utils.global(key, value)
	vim.g[key] = value;
	return value;
end

function Utils.keymap(mode, lhs, rhs, options)
	local opts = vim.tbl_extend('keep', options or {}, {
		noremap = true,
		silent = true,
		nowait = true
	});
	return vim.api.nvim_set_keymap(mode, lhs, rhs, opts);
end

function Utils.esc(command)
	return vim.api.nvim_replace_termcodes(command, true, false, true);
end

function Utils.command(command)
	return vim.cmd(command);
end

return Utils;
