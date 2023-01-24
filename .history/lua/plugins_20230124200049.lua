local fn = vim.fn

-- Load packer.nvim
vim.cmd("packadd packer.nvim")
local util = require('packer.util')

require("packer").startup({
  function(use)
    -- it is recommened to put impatient.nvim before any other plugins
    use {'lewis6991/impatient.nvim'}

    -- Packer
    use({"wbthomason/packer.nvim", opt = true})

    -- Useful lua functions used ny lots of plugins
    use "nvim-lua/plenary.nvim" 

    -- tree sitter
    use({ "nvim-treesitter/nvim-treesitter", event = 'BufEnter', run = ":TSUpdate" })

    -- use {'edluffy/hologram.nvim', config = [[require('config.hologram')]]}

    use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v1.x',
      requires = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},             -- Required
        {'williamboman/mason.nvim'},           -- Optional
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},         -- Required
        {'hrsh7th/cmp-nvim-lsp'},     -- Required
        {'hrsh7th/cmp-buffer'},       -- Optional
        {'hrsh7th/cmp-path'},         -- Optional
        {'saadparwaiz1/cmp_luasnip'}, -- Optional
        {'hrsh7th/cmp-nvim-lua'},     -- Optional

        -- Snippets
        {'L3MON4D3/LuaSnip'},             -- Required
        {'rafamadriz/friendly-snippets'}, -- Optional
      },
    }

    -- theme
    use "rktjmp/lush.nvim"
    use "CodeGradox/onehalf-lush"

    -- distraction writing plugin
    use "junegunn/goyo.vim"

    -- markdown preview
    use "iamcco/markdown-preview.nvim"

    -- autopair
    use {
      "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    -- File search, tag search (support fuzzy)
    use({ "Yggdroot/LeaderF", cmd = "Leaderf", run = ":LeaderfInstallCExtension" })

    -- telescope fuzzy search 
    use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- showing keybindings
    use {"folke/which-key.nvim",
    event = "VimEnter",
    config = function()
      vim.defer_fn(function() require('config.which-key') end, 2000)
    end
    }

    -- Super fast buffer jump
    use {
      'phaazon/hop.nvim',
      event = "VimEnter",
      config = function()
        vim.defer_fn(function() require('config.nvim_hop') end, 2000)
      end
    }

    use {
      "kyazdani42/nvim-tree.lua",
      requires = {
        'kyazdani42/nvim-web-devicons', -- optional, for file icon
      }
    }

    -- liveload
    use "turbio/bracey.vim"

    -- markdown img-paste snippet
    use "ferrine/md-img-paste.vim"

    -- translator tools
    use "voldikss/vim-translator"

    -- undotree
    use "mbbill/undotree"
    
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
