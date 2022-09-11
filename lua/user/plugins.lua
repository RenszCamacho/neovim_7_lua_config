return require('packer').startup(function(use)
    -- Packer can manage itself.
    use 'wbthomason/packer.nvim'

    -- Native LSP.
    use {
        'williamboman/nvim-lsp-installer', -- LSP Installer differents server lenguage
        'neovim/nvim-lspconfig',
        'glepnir/lspsaga.nvim' -- LSP UIs.
    }

    -- A better status line.
    -- use 'nvim-lualine/lualine.nvim'
    -- use { 'kyazdani42/nvim-web-devicons', opt = true }

    -- A better status line.
    use {
    'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- IDE.
    -- use 'yggdroot/indentline'
    use "lukas-reineke/indent-blankline.nvim"
    use 'windwp/nvim-autopairs'
    use 'windwp/nvim-ts-autotag'
    use 'norcalli/nvim-colorizer.lua'

    -- Nvim T-mux.
    use "alexghergh/nvim-tmux-navigation"

    -- Nvim Tree and Icons.
    use {
    'kyazdani42/nvim-tree.lua',
        requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
      },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }

    -- Tim Pope Plugins.
    use 'tpope/vim-surround'

    -- Colorschemes.
    use 'RRethy/nvim-base16'
    use 'andersevenrud/nordic.nvim'
    use 'Mofiqul/vscode.nvim'

    -- Commentary.
    use 'tpope/vim-commentary'

    -- Fuzzy Finder.
    use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'nvim-telescope/telescope-file-browser.nvim'

    -- TreeSitter.
    use {
    'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use 'p00f/nvim-ts-rainbow'

    -- VsCode-like Pictograms.
    use 'onsails/lspkind-nvim'

    -- Snippet.
    use 'L3MON4D3/LuaSnip'

    -- Completion.
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-nvim-lua'

    -- Git
    use 'lewis6991/gitsigns.nvim'
    use 'tpope/vim-fugitive'
    -- use 'dinhhuy258/git.nvim' -- For git blame & browse

    -- Tab Buffers
    use 'akinsho/nvim-bufferline.lua'

    -- .NET Development
    use 'OmniSharp/omnisharp-vim'

    -- Undo
    use 'mbbill/undotree'

end)
