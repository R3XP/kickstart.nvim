return {
  -- Better navigation with leap
  {
    'ggandor/leap.nvim',
    opts = {},
    init = function()
      require('leap').create_default_mappings()
    end,
  },

  -- sticky headers with treesitter context
  { 'nvim-treesitter/nvim-treesitter-context', opts = { mode = 'topline' } },

  -- Markdown rendering
  { 'MeanderingProgrammer/render-markdown.nvim' },
}
