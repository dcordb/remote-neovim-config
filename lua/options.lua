local options = {
  mouse = "a",
  number = true,
  title = true,
  tabstop = 4,
  expandtab = true,
  shiftwidth = 4,
  confirm = true,
  list = true,
  listchars = {
    tab = "→ ",
    nbsp = "+",
    lead = "·",
    trail = "·",
    precedes = "←",
    extends = "→"
  },
  cursorline = true,
  hidden = true,
  splitright = true,
  undofile = true,
  swapfile = false,
  scrolloff = 999,
  relativenumber = true,
  colorcolumn = "80",
  wrap = false,
  grepformat = "%f:%l:%c:%m,%f:%l:%m",
  grepprg = "rg --vimgrep --no-heading --smart-case $*",
  ignorecase = true,
  smartcase = true,
  termguicolors = true,
  foldmethod = "indent",
  foldlevel = 999,
}

-- Markdown (add desired languages here)
vim.g.markdown_fenced_languages = { "python", "cpp", "lua" }

-- Disable providers
vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_node_provider = 0

-- Load all options
vim.opt.ssop:remove { "help" }
vim.opt.shortmess:append { I = true }
vim.opt.fillchars:append { eob = " " }

for k, v in pairs(options) do
  vim.opt[k] = v
end
