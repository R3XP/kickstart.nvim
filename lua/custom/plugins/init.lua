-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
--
--
--[[ 

TODO:
 - [ ] Add telescope to obsidian vault?
 - [ ] Add smooth scroll?
 - [ ] Think about s mappings for leap / mini
 - [ ] Add git pluing
 - [ ] quick shortcut to telescope caput vault

]]
--
return {
  -- Color scheme
  { 'catppuccin/nvim', name = 'catppuccin', priority = 1000 },

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
