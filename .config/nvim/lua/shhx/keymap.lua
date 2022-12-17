local M = {}

function bind(mode, outer_ops)
	outer_ops = outer_ops or {noremap = true}
	return function(lhs, rhs, opts)
		opts = vim.tbl_extend("force", outer_ops, opts or {})
		vim.keymap.set(mode, lhs, rhs, opts)
	end
end

M.nnoremap = bind("n")
M.vnoremap = bind("v")
M.inoremap = bind("i")
M.xnoremap = bind("x")

M.buf_nnoremap = bind("n", {buffer = 0})
M.buf_vnoremap = bind("v", {buffer = 0})
M.buf_inoremap = bind("i", {buffer = 0})

return M
