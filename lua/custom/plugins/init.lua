-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local harpoon = require 'harpoon'

      harpoon:setup()

      vim.keymap.set('n', '<leader>a', function()
        harpoon:list():add()
      end)
      vim.keymap.set('n', '<leader>l', function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end)

      vim.keymap.set('n', '<C-h>', function()
        harpoon:list():select(1)
      end)
      vim.keymap.set('n', '<C-a>', function()
        harpoon:list():select(2)
      end)
      vim.keymap.set('n', '<C-e>', function()
        harpoon:list():select(3)
      end)
      vim.keymap.set('n', '<C-i>', function()
        harpoon:list():select(4)
      end)
      vim.keymap.set('n', '<leader><C-h>', function()
        harpoon:list():replace_at(1)
      end)
      vim.keymap.set('n', '<leader><C-a>', function()
        harpoon:list():replace_at(2)
      end)
      vim.keymap.set('n', '<leader><C-e>', function()
        harpoon:list():replace_at(3)
      end)
      vim.keymap.set('n', '<leader><C-i>', function()
        harpoon:list():replace_at(4)
      end)
    end,
  },
  {
    'numToStr/Comment.nvim',
    opts = {
      -- add any options here
    },
    config = function()
      local comment = require 'Comment'
      comment:setup()
    end,
  },
}
