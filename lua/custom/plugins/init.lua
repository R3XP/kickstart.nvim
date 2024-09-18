--[[ 

TODO:
 - [ ] Add telescope to obsidian vault?
 - [ ] Add smooth scroll?
 - [ ] Think about s mappings for leap / mini
 - [ ] Add git pluing
 - [ ] quick shortcut to telescope caput vault

]]
--
-- require './keymaps.lua'

-- require('ufo').setup {
--   provider_selector = function(bufnr, filetype, buftype)
--     return { 'indent' }
--   end,
-- }

return {
  -- Color scheme
  { 'catppuccin/nvim', name = 'catppuccin', priority = 1000 },
  { 'xiyaowong/transparent.nvim', opts = {} },

  -- FIXME: gotta fix folding when I have time.
  -- {
  --   'kevinhwang91/nvim-ufo',
  --   dependencies = 'kevinhwang91/promise-async',
  --   opts = {
  --     provider_selector = function(bufnr, filetype, buftype)
  --       print 'huuuh'
  --       return { 'indent' }
  --     end,
  --   },
  --   config = function()
  --    -- vim.o.foldcolumn = '1' -- '0' is not bad
  --     vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
  --     vim.o.foldlevelstart = 99
  --     vim.o.foldenable = true
  --
  --     -- Using ufo provider need remap `zR` and `zM`. If Neovim is 0.6.1, remap yourself
  --     vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
  --     vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)
  --   end,
  -- },

  -- Git integration with Neogit
  {
    'NeogitOrg/neogit',
    dependencies = {
      'nvim-lua/plenary.nvim', -- required
      'sindrets/diffview.nvim', -- optional - Diff integration

      -- Only one of these is needed.
      'nvim-telescope/telescope.nvim', -- optional
    },
    config = true,
  },

  -- Better navigation with leap
  {
    'ggandor/leap.nvim',
    opts = {},
    init = function()
      require('leap').create_default_mappings()
    end,
  },

  {
    'stevearc/oil.nvim',
    opts = {},
    -- Optional dependencies
    -- dependencies = { { 'echasnovski/mini.icons', opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
  },
}
