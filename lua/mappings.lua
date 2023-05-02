-- Leader definition
vim.g.mapleader = " "
kset("n", "<Space>", "<Nop>")

-- Terminal mode
kset("t", "<Esc>", "<C-\\><C-N>")
kset("t", "<M-t>", "<Esc>") -- inside terminal mode press escape (get to normal mode in shell)

-- Switching
kset("n", "<M-h>", "<C-W><C-H>")
kset("n", "<M-j>", "<C-W><C-J>")
kset("n", "<M-k>", "<C-W><C-K>")
kset("n", "<M-l>", "<C-W><C-L>")

kset("t", "<M-h>", "<Esc><C-W><C-H>", { remap = true })
kset("t", "<M-j>", "<Esc><C-W><C-J>", { remap = true })
kset("t", "<M-k>", "<Esc><C-W><C-K>", { remap = true })
kset("t", "<M-l>", "<Esc><C-W><C-L>", { remap = true })

-- Resizing
kset("n", "<M-K>", ":resize +3<CR>")
kset("n", "<M-J>", ":resize -3<CR>")
kset("n", "<M-L>", ":vertical resize +3<CR>")
kset("n", "<M-H>", ":vertical resize -3<CR>")

-- Tab switching
kset("n", "<M-!>", "1gt")
kset("n", "<M-@>", "2gt")
kset("n", "<M-#>", "3gt")
kset("n", "<M-$>", "4gt")
kset("n", "<M-%>", "5gt")

kset("t", "<M-!>", "<Esc>1gt", { remap = true })
kset("t", "<M-@>", "<Esc>2gt", { remap = true })
kset("t", "<M-#>", "<Esc>3gt", { remap = true })
kset("t", "<M-$>", "<Esc>4gt", { remap = true })
kset("t", "<M-%>", "<Esc>5gt", { remap = true })

-- Next/Prev tab
kset("n", "<C-l>", "gt")
kset("n", "<C-h>", "gT")
kset("n", "gt", "<Nop>")
kset("n", "gT", "<Nop>")

-- Misc
-- Turn off search highlight
kset("n", "<BS>", ":noh<CR>")

-- Save current buffer (if there were changes)
kset("n", "<M-s>", ":up<CR>")

-- Discard current file
kset("n", "<Leader>r", ":e!<CR>")

-- Quit window
kset("n", "<M-q>", ":quit<CR>")

local function chdirtab(dir)
  -- local dir = vim.fn.expand('%:p:h')
  vim.api.nvim_command("tcd " .. dir)
end

kset("n", "<Leader>dd", function() chdirtab(vim.fn.expand("%:p:h")) end)
kset("n", "<Leader>dc", function() chdirtab(vim.fn.expand("$NVIM_DOTS")) end)
kset("n", "<Leader>do", function() chdirtab(vim.fn.expand("$DOTFILES")) end)

-- toggle quickfix
local function is_quickfix_open()
  for _, info in ipairs(vim.fn.getwininfo()) do
    if info.quickfix == 1 then
      return true
    end
  end
  return false
end

local function toggle_quickfix()
  if is_quickfix_open() then
    vim.cmd("cclose")
  else
    vim.cmd("copen")
  end
end

kset("n", "<Leader>q", toggle_quickfix)
