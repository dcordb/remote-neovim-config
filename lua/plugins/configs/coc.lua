kset("n", "<leader>.", "<Plug>(coc-codeaction)", {})

-- definition and help
kset("n", "gd", "<Plug>(coc-definition)")
kset("n", "gh", ":call CocActionAsync('doHover')<CR>")

-- code actions
kset("n", "<Leader>ci", ":call CocAction('organizeImport')<CR>")

-- kset("n", "<leader>rn", "<Plug>(coc-rename)", {})
kset("n", "gt", "<Plug>(coc-float-jump)")
kset("n", "<Leader>cf", "<Plug>(coc-format)")

-- completion
local actions = {
  u = "<M-j>",
  d = "<M-k>",
}

if vim.fn.exists("$TMUX") == 1 then
  actions["u"] = "<M-m><C-j>"
  actions["d"] = "<M-m><C-k>"
end

kset("i", actions["u"], "coc#pum#visible() ? coc#pum#next(1) : '<M-j>'",
  { expr = true })

kset("i", actions["d"], "coc#pum#visible() ? coc#pum#prev(1) : '<M-k>'",
  { expr = true })

kset("i", "<M-Space>", "coc#refresh()", { expr = true })
kset("i", "<M-f>", "coc#pum#visible() ? coc#pum#confirm() : '<C-g>u<CR><C-r>=coc#on_enter()<CR>'",
  { expr = true })

kset("i", "<M-s>", "<Plug>(coc-snippets-expand)", {})

vim.g.coc_snippet_next = actions["u"]
vim.g.coc_snippet_prev = actions["d"]

kset("x", "<Leader>cs", "<Plug>(coc-convert-snippet)", {})
