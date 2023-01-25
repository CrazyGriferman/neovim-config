--global replace a text in a file
vim.keymap.set('n', '<leader>r', ':%s/\\<<C-r><C-w>\\>//g<left><left>')

-- back to the current directory
vim.keymap.set('n', '<leader>pv', ':Ex<CR>')

-- in visual mode, when you select lines of text, you can move them up with J and down with K
vim.keymap.set('v', "J", ":m '>+1<CR>gv=gv")
vim.keymap.set('v', "K", ":m '<-2<CR>gv=gv")

--take the line below and append it in this line with a space interval
vim.keymap.set("n", "J", "mzJ`z")

--half page jumping
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

--maintain the search item in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- paste text without losing cureent buffer
vim.keymap.set("x", "<leader>p", "\"_dP")

--paste things in system register(clipboard)
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

--delete things in void register
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

--ban Q
vim.keymap.set("n", "Q", "<nop>")

--initiate a new tmux session
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

--lsp buf format (use pretieer)
vim.keymap.set("n", "<leader>f", function()
  vim.lsp.buf.format()
end)

--quickfix feature
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- make a program executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true})



