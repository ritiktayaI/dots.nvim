require("options")
require("plugins")

for _, file in ipairs(vim.fn.readdir(vim.fn.stdpath "config" .. "/lua/user_functions", [[v:val =~ '\.lua$']])) do
	require("user_functions." .. file:gsub("%.lua$", ""))
end

if vim.fn.has('nvim') == 1 and vim.fn.executable('nvr') == 1 then
  vim.env.VISUAL = "nvr -cc split --remote-wait +'set bufhidden=wipe'"
end
