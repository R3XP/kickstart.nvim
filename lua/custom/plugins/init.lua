--[[ 

TODO:
 - [ ] Add smooth scroll?
 - [ ] Think about s mappings for leap / mini
 - [x] Add git pluing
 - [ ] quick shortcut to telescope caput vault
  - [ ] Add telescope to obsidian vault?

]]
--
-- require './keymaps.lua'

-- require('ufo').setup {
--   provider_selector = function(bufnr, filetype, buftype)
--     return { 'indent' }
--   end,
-- }

vim.api.nvim_set_hl(0, 'Folded', { bg = '#2e3440', fg = '#88c0d0' }) -- Farben anpassen
local normal_bg = vim.api.nvim_get_hl_by_name('Normal', true).background
if normal_bg then
  -- Setze die Hintergrundfarbe von `Folded` entsprechend
  vim.api.nvim_set_hl(0, 'Folded', { bg = string.format('#%06x', normal_bg), fg = '#a0a0a0', italic = true, bold = true }) -- Passe fg an, falls nötig
end

local lspconfig = require 'lspconfig'

lspconfig.jsonls.setup {
  settings = {
    jsonls = {
      json = {
        format = {
          keepLines = true,
        },
      },
    },
  },
}

return {

  -- Troubleshooting
  { 'folke/trouble.nvim', opts = {}, cmd = 'Trouble' },

  -- AI completion with Avante
  -- {
  --   'yetone/avante.nvim',
  --   event = 'VeryLazy',
  --   -- lazy = false,
  --   version = false, -- set this if you want to always pull the latest change
  --   opts = {
  --     -- add any opts here
  --     provider = 'openai',
  --     openai = {
  --       model = 'gpt-4o-mini',
  --     },
  --   },
  --   -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
  --   build = 'make',
  --   -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
  --   dependencies = {
  --     'nvim-treesitter/nvim-treesitter',
  --     'stevearc/dressing.nvim',
  --     'nvim-lua/plenary.nvim',
  --     'MunifTanjim/nui.nvim',
  --     --- The below dependencies are optional,
  --     'nvim-tree/nvim-web-devicons', -- or echasnovski/mini.icons
  --     'zbirenbaum/copilot.lua', -- for providers='copilot'
  --     -- {
  --     --   -- support for image pasting
  --     --   'HakonHarnes/img-clip.nvim',
  --     --   event = 'VeryLazy',
  --     --   opts = {
  --     --     -- recommended settings
  --     --     default = {
  --     --       embed_image_as_base64 = false,
  --     --       prompt_for_file_name = false,
  --     --       drag_and_drop = {
  --     --         insert_mode = true,
  --     --       },
  --     --       -- required for Windows users
  --     --       use_absolute_path = true,
  --     --     },
  --     --   },
  --     -- },
  --     {
  --       -- Make sure to set this up properly if you have lazy=true
  --       'MeanderingProgrammer/render-markdown.nvim',
  --       opts = {
  --         file_types = { 'markdown', 'Avante' },
  --       },
  --       ft = { 'markdown', 'Avante' },
  --     },
  --   },
  -- },
}
