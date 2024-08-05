vim.keymap.set({ 'n', 'v' }, 'gg', 'gg0')
vim.keymap.set({ 'n', 'v' }, 'G', 'G$')

vim.keymap.set('i', 'jj', '<Esc>')

vim.keymap.set('n', '<C-p>', vim.cmd.Ex)

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

vim.keymap.set('n', 'J', 'mzJ`z')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

vim.keymap.set('x', '<leader>p', '"_dP')

vim.keymap.set('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set('n', '<leader>sF', function()
  require('telescope.builtin').git_files {}
end, { desc = 'Search Git Files' })
