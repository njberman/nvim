-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'mbbill/undotree',
    init = function()
      vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
    end,
  },
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencieds = { 'nvim-lua/plenary.nvim' },
  },
  { 'ThePrimeagen/vim-be-good' },
  -- {
  --   'lervag/vimtex',
  --   lazy = false, -- we don't want to lazy load VimTeX
  --   -- tag = "v2.15", -- uncomment to pin to a specific release
  --   init = function()
  --     -- VimTeX configuration goes here, e.g.
  --     vim.g.vimtex_view_method = 'zathura'
  --   end,
  -- },
}
