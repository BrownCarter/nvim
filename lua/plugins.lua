vim.cmd [[
    packadd vim-vsnip
    packadd vim-vsnip-integ
    packadd nvim-compe
    packadd nvim-cmp
    packadd nvim-colorizer.lua
    packadd nvim-dap-ui
    packadd nvim-dap
    packadd cmp-nvim-lsp
]]
return require("packer").startup(
  function(use)
    -- Packer can manage itself
    use "wbthomason/packer.nvim"
    use "CurtisFenner/luafmt"
    use "joshdick/onedark.vim"
    use "jacquesg/p5-Neovim-Ext"
    use "rafamadriz/friendly-snippets"
    use "L3MON4D3/LuaSnip"
    use "Pocco81/AutoSave.nvim"
    use "RishabhRD/nvim-lsputils"
    use "RishabhRD/popfix"
    use {
      "SirVer/ultisnips",
      requires = {{"honza/vim-snippets", rtp = "."}, {"mlaursen/vim-react-snippets"}},
      config = function()
        vim.g.UltiSnipsExpandTrigger = "<Plug>(ultisnips_expand)"
        vim.g.UltiSnipsJumpForwardTrigger = "<Plug>(ultisnips_jump_forward)"
        vim.g.UltiSnipsJumpBackwardTrigger = "<Plug>(ultisnips_jump_backward)"
        vim.g.UltiSnipsListSnippets = "<c-x><c-s>"
        vim.g.UltiSnipsRemoveSelectModeMappings = 0
      end
    }
    use {
      "neovim/nvim-lspconfig",
      "williamboman/nvim-lsp-installer"
    }
    use "b3nj5m1n/kommentary"
    use "bfrg/vim-cpp-modern"
    use "folke/lsp-colors.nvim"
    use "folke/which-key.nvim"
    use "gko/vim-coloresque"
    use "glepnir/dashboard-nvim"
    use "honza/vim-snippets"
    use "nvim-lualine/lualine.nvim"
    use {"autozimu/LanguageClient-neovim", run = "bash install.sh"}
    use {
      "hrsh7th/nvim-compe",
      event = "InsertEnter *",
      requires = {{"hrsh7th/vim-vsnip"}, {"hrsh7th/vim-vsnip-integ"}}
    }
    use "hrsh7th/vim-vsnip-integ"
    use "jlanzarotta/bufexplorer"
    use "kyazdani42/nvim-tree.lua"
    use "kyazdani42/nvim-web-devicons"
    use "lewis6991/gitsigns.nvim"
    use "mattn/emmet-vim"
    use "mfussenegger/nvim-jdtls"
    use "mhartington/formatter.nvim"
    use {"michaelb/sniprun", run = "bash ./install.sh"}
    use "nanotee/sqls.nvim"
    use "natebosch/vim-lsc"
    use "neovim/nvim-lsp"
    use {
      "norcalli/nvim-colorizer.lua",
      ft = {"css", "javascript", "vim", "html"}
    }
    use "nvim-lua/lsp-status.nvim"
    use "nvim-lua/plenary.nvim"
    use "nvim-lua/popup.nvim"
    use "nvim-telescope/telescope.nvim"
    use {
      "nvim-treesitter/nvim-treesitter",
      requires = {
        "nvim-treesitter/nvim-treesitter-refactor",
        "nvim-treesitter/nvim-treesitter-textobjects"
      },
      run = ":TSUpdate"
    }
    use "nvim-treesitter/playground"
    use "onsails/lspkind-nvim"
    use "udalov/kotlin-vim"
    use "robert-oleynik/clangd-nvim"
    use "romgrk/barbar.nvim"
    use "ryanoasis/vim-devicons"
    use "sainnhe/gruvbox-material"
    use "simrat39/rust-tools.nvim"
    use "simrat39/symbols-outline.nvim"
    use "sudormrfbin/cheatsheet.nvim"
    use "tpope/vim-sensible"
    use {"ray-x/guihua.lua", run = "cd lua/fzy && make"}
    use {
      "ray-x/lsp_signature.nvim"
    }
    use "voldikss/vim-floaterm"
    use "windwp/nvim-autopairs"
    use "wuelnerdotexe/vim-enfocado"
    use {
      "hrsh7th/nvim-cmp",
      event = "InsertEnter *",
      wants = {"LuaSnip"},
      requires = {
        {
          "L3MON4D3/LuaSnip",
          wants = "friendly-snippets"
        },
        "rafamadriz/friendly-snippets",
        {
          "windwp/nvim-autopairs"
        },
        {"saadparwaiz1/cmp_luasnip"}
      }
    }
    use {"hrsh7th/cmp-path", after = "nvim-cmp"}
    use {"saadparwaiz1/cmp_luasnip", after = "nvim-cmp"}
    use {"hrsh7th/cmp-buffer", after = "nvim-cmp"}
    use {"hrsh7th/cmp-nvim-lsp", after = "nvim-cmp"}
    use {"abzcoding/cmp_luasnip", after = "nvim-cmp"}
    use {"hrsh7th/cmp-nvim-lua", after = "nvim-cmp"}
    use {"hrsh7th/cmp-emoji", after = "nvim-cmp"}
    use {"hrsh7th/cmp-calc", after = "nvim-cmp"}
    use {"hrsh7th/cmp-omni", after = "nvim-cmp"}

    -- Debugger
    use {
      {
        "mfussenegger/nvim-dap",
        requires = "jbyuki/one-small-step-for-vimkind",
        wants = "one-small-step-for-vimkind",
        module = "dap"
      },
      {
        "rcarriga/nvim-dap-ui",
        requires = "nvim-dap",
        after = "nvim-dap",
        config = function()
          require("dapui").setup()
        end
      }
    }
  end
)
