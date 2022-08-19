local status, packer = pcall(require, 'packer')
if (not status) then
  print("Packer is not installed!")
  return
end

vim.cmd([[packadd packer.nvim]])

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }
  use 'hoob3rt/lualine.nvim' -- Statusline
  use 'glepnir/lspsaga.nvim' -- LSP UIs
  use 'neovim/nvim-lspconfig' -- LSP
  use 'onsails/lspkind-nvim' -- vscode-like pictograms
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source (from buffer)
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source (from LSP)
  use 'hrsh7th/nvim-cmp' -- Completion
  use 'L3MON4D3/LuaSnip' -- Snippets
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'jose-elias-alvarez/null-ls.nvim' --
  use 'MunifTanjim/prettier.nvim'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'

  use 'nvim-lua/plenary.nvim' -- Common utils
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'

  use 'kyazdani42/nvim-web-devicons' -- File icons
  use 'akinsho/nvim-bufferline.lua'
  use 'norcalli/nvim-colorizer.lua'

  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim'
end)
