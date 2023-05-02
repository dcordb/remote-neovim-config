local overseer = require("overseer")
overseer.setup()

kset("n", "<Leader>oo", ":OverseerToggle<CR>")
kset("n", "<Leader>or", ":OverseerRun<CR>")
