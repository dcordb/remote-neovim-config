require("toggleterm").setup {
  size = function()
    return vim.o.lines * 0.3
  end,
  shade_terminals = false,
  start_in_insert = false,
  persistent_size = true,
  insert_mappings = false
}

kset("n", "`", ":ToggleTermToggleAll<CR>")

kset("n", "<M-1>", ":1ToggleTerm<CR>")
kset("n", "<M-2>", ":2ToggleTerm<CR>")
kset("n", "<M-3>", ":3ToggleTerm<CR>")
kset("n", "<M-4>", ":4ToggleTerm<CR>")
kset("n", "<M-5>", ":5ToggleTerm<CR>")

kset("t", "<M-1>", "<Esc>:1ToggleTerm<CR>", { remap = true })
kset("t", "<M-2>", "<Esc>:2ToggleTerm<CR>", { remap = true })
kset("t", "<M-3>", "<Esc>:3ToggleTerm<CR>", { remap = true })
kset("t", "<M-4>", "<Esc>:4ToggleTerm<CR>", { remap = true })
kset("t", "<M-5>", "<Esc>:5ToggleTerm<CR>", { remap = true })
