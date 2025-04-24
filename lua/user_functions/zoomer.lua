local M = {}
local zoomed = false

function M.zoom_toggle()
	if zoomed then
		vim.cmd.wincmd "="
		zoomed = false
	else
		vim.cmd.wincmd "_"
		vim.cmd.wincmd "|"
		zoomed = true
	end
end

vim.keymap.set('n', '<leader>zom', M.zoom_toggle, { remap = true, silent = false })

return M
