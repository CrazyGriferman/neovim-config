-- source everyfile in core folder that ends with .lua
local paths = vim.split(vim.fn.glob('~/.config/nvim/core/*lua'), '\n')
for i, file in pairs(paths) do
  vim.cmd('source ' .. file)
end

