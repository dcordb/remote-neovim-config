require "nvim-treesitter.configs".setup {
  ensure_installed = { "lua", "python", "cpp" },

  highlight = {
    enable = true,
    disable = {
      "latex", -- latex because it disables spell clusters
      "html",
    }
  },

  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "gnu",
      scope_incremental = "gns",
      node_decremental = "gnd",
    },
  },

  textobjects = {
    select = {
      enable = true,
      keymaps = {
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = "@class.inner",
        ["al"] = "@loop.outer",
        ["il"] = "@loop.inner",
        ["ai"] = "@conditional.outer",
        ["ii"] = "@conditional.inner",
      },
    },
  },

  autotag = {
    enable = true,
  }
}
