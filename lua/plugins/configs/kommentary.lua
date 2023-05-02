vim.g.kommentary_create_default_mappings = false

kset("n", "<Leader>kk", "<Plug>kommentary_line_default")
kset("n", "<Leader>k", "<Plug>kommentary_motion_default")
kset("v", "<Leader>kv", "<Plug>kommentary_visual_default")

kset("n", "<Leader>kuu", "<Plug>kommentary_line_increase")
kset("n", "<Leader>ku", "<Plug>kommentary_motion_increase")
kset("v", "<Leader>ku", "<Plug>kommentary_visual_increase")
kset("n", "<Leader>kdd", "<Plug>kommentary_line_decrease")
kset("n", "<Leader>kd", "<Plug>kommentary_motion_decrease")
kset("v", "<Leader>kd", "<Plug>kommentary_visual_decrease")
