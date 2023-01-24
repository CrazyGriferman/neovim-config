vim.cmd[[ hi HopNextKey cterm=bold ctermfg=176 gui=bold guibg=#ff00ff guifg=#ffffff ]]
vim.cmd[[ hi HopNextKey1 cterm=bold ctermfg=176 gui=bold guibg=#ff00ff guifg=#ffffff ]]
vim.cmd[[ hi HopNextKey2 cterm=bold ctermfg=176 gui=bold guibg=#ff00ff guifg=#ffffff ]]
lua <<EOF
require('hop').setup({
  case_insensitive = true,
  char2_fallback_key = '<CR>',
})

vim.api.nvim_set_keymap('n', 'f', "<cmd>lua require'hop'.hint_char2()<cr>", {noremap = true})
EOF