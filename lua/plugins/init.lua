-- Automatically install packer
local install_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  print("Installing packer...")

  PACKER_BOOTSTRAP = vim.fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }

  vim.cmd [[packadd packer.nvim]]
  print("Packer is installed!")
end

require("packer").startup {
  function(use)
    use "wbthomason/packer.nvim" -- Have packer manage itself

    for _, plugin in pairs(require("plugins.index")) do
      use(plugin)
    end

    -- Automatically set up configuration after cloning packer.nvim
    if PACKER_BOOTSTRAP then
      require("packer").sync()
    end
  end,
  config = {
    git = {
      clone_timeout = 180
    }
  }
}
