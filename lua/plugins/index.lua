local plugins = {
  {
    "navarasu/onedark.nvim",
    config = function()
      require("plugins.configs.onedark")
    end
  },
  {
    "kyazdani42/nvim-tree.lua",
    config = function()
      require("plugins.configs.nvim-tree")
    end,
    requires = {
      "kyazdani42/nvim-web-devicons",
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    after = "onedark.nvim",
    requires = {
      "kyazdani42/nvim-web-devicons"
    },
    config = function()
      require("plugins.configs.lualine")
    end
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()
    end
  },
  {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    config = function()
      require("plugins.configs.treesitter")
    end
  },
  { "tpope/vim-fugitive" },
  { "tpope/vim-rhubarb" }, -- for GBrowse
  {
    "karb94/neoscroll.nvim",
    config = function()
      require("plugins.configs.neoscroll")
    end
  },
  {
    "akinsho/toggleterm.nvim",
    tag = "*",
    config = function()
      require("plugins.configs.toggleterm")
    end
  },
  {
    "b3nj5m1n/kommentary",
    config = function()
      require("plugins.configs.kommentary")
    end
  },
  {
    "nvim-telescope/telescope.nvim",
    requires = { "nvim-lua/plenary.nvim" },
    config = function()
      require("plugins.configs.telescope")
    end
  },
  {
    "neoclide/coc.nvim",
    branch = "release",
    config = function()
      require("plugins.configs.coc")
    end
  },
  { "milisims/nvim-luaref" },
  { "machakann/vim-sandwich" },
  { "honza/vim-snippets" },
  {
    "stevearc/overseer.nvim",
    config = function()
      require("plugins.configs.overseer")
    end
  },
  { "stevearc/dressing.nvim" },
  {
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
    ft = "markdown",
  },
  {
    "chrisbra/csv.vim",
    disable = true
  },
  { "kevinhwang91/nvim-bqf" }
}

return plugins
