return {
  { 'EdenEast/nightfox.nvim', priority = 1000 },

  {
    'craftzdog/solarized-osaka.nvim',
    lazy = false,
    priority = 1000,

    config = function()
      require('solarized-osaka').setup {
        transparent = false,
        -- disable italic for functions
        styles = {
          functions = {},
        },
        -- sidebars = { 'qf', 'vista_kind', 'terminal', 'packer' },

        -- Change the "hint" color to the "orange" color, and make the "error" color bright red
        on_colors = function(colors)
          -- colors.hint = colors.orange
          -- colors.error = '#ff0000'

          colors.bg = colors.base04
          colors.bg_statusline = colors.bg
        end,

        -- ---@param highlights Highlights
        -- ---@param colors ColorScheme
        -- on_highlights = function(hl, colors)
        --   -- hl.Telesco
        -- end,
      }

      vim.cmd.colorscheme 'solarized-osaka'
    end,
  },
}
