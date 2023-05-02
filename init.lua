function kset(mode, lhs, rhs, opts)
  opts = vim.tbl_extend("keep", opts or {}, { silent = true })
  vim.keymap.set(mode, lhs, rhs, opts)
end

require("mappings")
require("plugins")
require("options")
require("autocmds")
