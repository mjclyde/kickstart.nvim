-- Keymaps are automatically loadem on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local nvim_tmux_nav = require("nvim-tmux-navigation")
nvim_tmux_nav.setup({
  disable_when_zoomed = true, -- defaults to false
})

vim.keymap.set("n", "<C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft)
vim.keymap.set("n", "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown)
vim.keymap.set("n", "<C-k>", nvim_tmux_nav.NvimTmuxNavigateUp)
vim.keymap.set("n", "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight)
vim.keymap.set("n", "<C-\\>", nvim_tmux_nav.NvimTmuxNavigateLastActive)
vim.keymap.set("n", "<C-Space>", nvim_tmux_nav.NvimTmuxNavigateNext)
vim.keymap.set("n", "B", "^")
vim.keymap.set("n", "E", "$")
vim.keymap.set("n", "<C-s>", ":wa<CR>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", '"_dP')

vim.keymap.set("n", "zh", ":vert res +5<CR>", { silent = true })
vim.keymap.set("n", "zl", ":vert res -5<CR>", { silent = true })
vim.keymap.set("n", "zk", ":res +5<CR>", { silent = true })
vim.keymap.set("n", "zj", ":res -5<CR>", { silent = true })

vim.keymap.set("n", "<leader>gs", "<CMD>G<CR>")
