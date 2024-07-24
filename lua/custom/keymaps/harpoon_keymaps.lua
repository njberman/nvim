local harpoon = require 'harpoon'

harpoon:setup {}

-- basic telescope configuration
local conf = require('telescope.config').values
local function toggle_telescope(harpoon_files)
  local file_paths = {}
  for _, item in ipairs(harpoon_files.items) do
    table.insert(file_paths, item.value)
  end

  require('telescope.pickers')
    .new({}, {
      prompt_title = 'Harpoon',
      finder = require('telescope.finders').new_table {
        results = file_paths,
      },
      previewer = conf.file_previewer {},
      sorter = conf.generic_sorter {},
    })
    :find()
end

local function emit_keypress(key)
  -- Use vim.api.nvim_replace_termcodes to handle special keys and modifiers
  local termcode = vim.api.nvim_replace_termcodes(key, true, true, true)
  -- Use vim.api.nvim_feedkeys to emit the keypress
  vim.api.nvim_feedkeys(termcode, 'n', false)
end

vim.keymap.set('n', '<leader>Hs', function()
  toggle_telescope(harpoon:list())
  emit_keypress '<Esc>'
end, { desc = 'Open harpoon window' })

vim.keymap.set('n', '<leader>Ha', function()
  harpoon:list():add()
end)

vim.keymap.set('n', '<leader>Hn', function()
  harpoon:list():next()
end)

vim.keymap.set('n', '<leader>Hp', function()
  harpoon:list():prev()
end)

vim.keymap.set('n', '<leader>Hr', function()
  harpoon:list():remove_at(harpoon_idx)
end)
