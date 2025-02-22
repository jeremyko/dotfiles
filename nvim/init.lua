-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.keymap.set("n", "<leader>a", "<cmd>AerialToggle!<CR>")
-- vim.keymap.set("n", "<leader>a", "<cmd>AerialNavToggle<CR>")

-- vim.api.nvim_set_keymap('n', '<Leader>t', ':lua require("plugins.kojh.insert_time").insert_current_time()<CR>', {noremap = true, silent = true})
-- vim.api.nvim_set_keymap('n', '<Leader>T', ':lua require("plugins.kojh.insert_time").insert_current_time("%Y년 %m월 %d일 %H시 %M분 %S초")<CR>', {noremap = true, silent = true})



