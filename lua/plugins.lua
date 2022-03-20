local fn = vim.fn

-- Load packer.nvim
vim.cmd("packadd packer.nvim")
local util = require('packer.util')

require("packer").startup({
  function(use)
    -- it is recommened to put impatient.nvim before any other plugins
    use {'lewis6991/impatient.nvim', config = [[require('impatient')]]}

    -- Packer
    use({"wbthomason/packer.nvim", opt = true})
    
    -- snippets
    use "SirVer/ultisnips"
    use "honza/vim-snippets"

    -- theme
    use "rktjmp/lush.nvim"
    use "CodeGradox/onehalf-lush"

    -- distraction writing plugin
    use "junegunn/goyo.vim"

    -- markdown preview
    use "iamcco/markdown-preview.nvim"

  end,
  config = {
    max_jobs = 16,
    compile_path = util.join_paths(vim.fn.stdpath('config'), 'lua', 'packer_compiled.lua'),
  },
})

local status, _ = pcall(require, 'packer_compiled')
if not status then
  vim.notify("Error requiring packer_compiled.lua: run PackerSync to fix!")
end
