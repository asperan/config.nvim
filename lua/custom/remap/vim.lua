-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Remap to exit from terminal input with <Escape>
vim.keymap.set('t', "<esc>", "<c-\\><c-n>", { silent = true })

-- Remap for saving with ctrl-s
vim.keymap.set('n', "<c-s>", "<cmd>w<cr>", { silent = true })

-- Remap to move lines around in visual mode, automatically indenting them
vim.keymap.set('v', "J", ":m '>+1<CR>gv=gv")
vim.keymap.set('v', "K", ":m '<-2<CR>gv=gv")

-- Jump half oage up/down and center the line on screen
vim.keymap.set('n', "<A-j>", "<C-d>zz")
vim.keymap.set('n', "<A-k>", "<C-u>zz")

-- Create a new line below/above without staying in insert mode
vim.keymap.set('n', "<A-o>", "o<esc>")
vim.keymap.set('n', "<A-O>", "O<esc>")

