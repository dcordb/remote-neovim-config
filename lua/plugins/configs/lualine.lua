-- get onedark color palette
local colors = require "onedark.colors"

local M = {}

function M.sitterstatus()
  local parsers = require "nvim-treesitter.parsers"
  local lang = parsers.get_buf_lang()
  return parsers.has_parser(lang)
end

function M.sittertext()
  return "TS"
end

function M.sittercolor()
  local color = M.sitterstatus() and colors.green or colors.red
  return { fg = "black", bg = color }
end

require("lualine").setup {
  options = {
    theme = "onedark",
    section_separators = "",
    component_separators = "",
  },
  sections = {
    lualine_a = { "mode" },

    lualine_b = {
      "branch",
      {
        "diff",
        colored = true,
        diff_color = {
          added = { fg = colors.green },
          modified = { fg = colors.blue },
          removed = { fg = colors.red },
        },
        symbols = { added = "+", modified = "~", removed = "-" }
      },
    },

    lualine_c = {
      {
        "filename",
        path = 1
      },
      "overseer",
      "g:coc_status"
    },

    lualine_x = {
      {
        "diagnostics",
        sources = { "coc" },
      },
      {
        M.sittertext,
        color = M.sittercolor
      },
      "encoding",
      "fileformat",
      {
        "filetype",
        colored = true,
      }
    },

    lualine_y = { "progress" },

    lualine_z = { "location" }
  },

  extensions = { "nvim-tree", "quickfix", "fugitive", "toggleterm", "overseer" }
}

return M
