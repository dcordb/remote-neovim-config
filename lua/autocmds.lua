vim.api.nvim_create_autocmd(
  "FileType",
  { pattern = "qf", command = "wincmd K" }
)

vim.api.nvim_create_autocmd(
  "BufRead",
  {
    pattern = { "coc-settings.json", "tsconfig.json", "devcontainer.json", ".eslintrc" },
    command = "set ft=jsonc"
  }
)

vim.api.nvim_create_autocmd(
  "BufRead",
  {
    pattern = { "dockerfile" },
    command = "set ft=dockerfile"
  }
)

vim.api.nvim_create_autocmd(
  "Filetype",
  {
    pattern = "solidity",
    callback = function()
      vim.b.coc_root_patterns = { "truffle-config.js" }
    end
  }
)
