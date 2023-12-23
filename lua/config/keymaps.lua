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
vim.keymap.set("n", "<C-Spkce>", nvim_tmux_nav.NvimTmuxNavigateNext)

vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
-- vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
-- vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

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

-- Windows
vim.keymap.set('n', '<leader>|', '<C-w>v', { desc = 'Split window vertically' })
vim.keymap.set('n', '<leader>-', '<C-w>s', { desc = 'Split window horizontally' })
vim.keymap.set('n', '<leader>wo', '<C-w>o', { desc = 'Close all other windows' })
vim.keymap.set('n', '<leader>w|', '<C-w>|', { desc = 'Max out the width' })
vim.keymap.set('n', '<leader>w-', '<C-w>_', { desc = 'Max out the height' })
vim.keymap.set('n', '<leader>w=', '<C-w>=', { desc = 'Equally high and wide' })
vim.keymap.set('n', '<leader>wq', '<C-w>q', { desc = 'Quit a window' })
vim.keymap.set('n', '<leader>wx', '<C-w>x', { desc = 'Swap current with next' })

-- Telescope
local telescopeBuiltIn = require('telescope.builtin')
local telescopeThemes = require('telescope.themes')

-- See `:help telescope.builtin`
vim.keymap.set('n', '<leader>sb', telescopeBuiltIn.buffers, { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', '<leader>ss', telescopeBuiltIn.builtin, { desc = '[S]earch [S]elect Telescope' })
vim.keymap.set('n', '<leader>sf', telescopeBuiltIn.git_files, { desc = 'Search [G]it [F]iles' })
vim.keymap.set('n', '<leader><space>', telescopeBuiltIn.find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sh', telescopeBuiltIn.help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sw', telescopeBuiltIn.grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', telescopeBuiltIn.live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sd', telescopeBuiltIn.diagnostics, { desc = '[S]earch [D]iagnostics' })
vim.keymap.set('n', '<leader>sr', telescopeBuiltIn.resume, { desc = '[S]earch [R]esume' })
vim.keymap.set('n', '<leader>?', telescopeBuiltIn.oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  telescopeBuiltIn.current_buffer_fuzzy_find(telescopeThemes.get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer' })
vim.keymap.set('n', '<leader>s/', function ()
  telescopeBuiltIn.live_grep {
    grep_open_files = true,
    prompt_title = 'Live Grep in Open Files',
  }
end, { desc = '[S]earch [/] in Open Files' })

-- Neo-Tree
vim.keymap.set('n', '<leader>e', '<CMD>Neotree toggle<CR>')


-- Git
vim.keymap.set('n', '<leader>gs', '<CMD>G<CR>', { desc = 'Status' })
vim.keymap.set('n', '<leader>gp', '<CMD>G pull<CR>', { desc = 'Pull' })
vim.keymap.set('n', '<leader>gP', '<CMD>G push<CR>', { desc = 'Push' })
