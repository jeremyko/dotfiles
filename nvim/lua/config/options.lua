-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.winbar = "%=%m %f"

local opt = vim.opt
opt.shiftwidth = 4
opt.tabstop = 4
opt.ruler = true
vim.g.autoformat = false
vim.wo.relativenumber = false
-- vim.bo.expandtab = true
-- vim.bo.shiftwidth = 4
vim.bo.softtabstop = 4
