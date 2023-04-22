-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`

vim.cmd.packadd('packer.nvim')
return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Treesitter
    use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    -- Undotree
    use ('mbbill/undotree')

    -- lsp-zeo
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
        }
    }

    -- Which-key
    use {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup ({
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
                plugins = {
                    marks = false,
                    registers = false
                },
                window = {
                    position = "bottom"
                }
            })
        end
    }

    -- harpoon
    use ('theprimeagen/harpoon')

    -- Regex Explainer
    use { 'bennypowers/nvim-regexplainer',
        config = function() require'regexplainer'.setup() end,
        requires = {
            'nvim-treesitter/nvim-treesitter',
            'MunifTanjim/nui.nvim',
        },
        { run = ':TSInstall regex typescript'}
    }   

    -- Themes
    use ('tiagovla/tokyodark.nvim')
    use ('navarasu/onedark.nvim')
    use({
        'rose-pine/neovim',
        as = 'rose-pine'
    })

   -- Dashoard
   use ({
       'glepnir/dashboard-nvim',
       event = 'VimEnter',
       config = function()
           
       end,
       requires = {'nvim-tree/nvim-web-devicons'}
   })
    use ('eandrju/cellular-automaton.nvim')

end)


