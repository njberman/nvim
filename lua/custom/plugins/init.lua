-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'mbbill/undotree',
    init = function()
      vim.keymap.set('n', '<leader>u', vim.cmd.UndoTreeToggle)
    end,
  },
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencieds = { 'nvim-lua/plenary.nvim' },
  },
  { 'codota/tabnine-nvim', build = './dl_binaries.sh' },
}
