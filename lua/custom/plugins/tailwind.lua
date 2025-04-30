return {
  'luckasRanarison/tailwind-tools.nvim',
  name = 'tailwind-tools',
  build = ':UpdateRemotePlugins',
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'nvim-telescope/telescope.nvim', -- optional
    'neovim/nvim-lspconfig',
  },
  opts = {
    server = {
      override = false, -- übernimmt das Setup für tailwindcss-language-server
      filetypes = { 'rust', 'html' },
      settings = {
        filetypes = { 'rust', 'html' },
        includeLanguages = {
          rust = 'html',
        },
        experimental = {
          -- wichtig: Liste von Regex-Paaren!
          classRegex = {
            { 'class:%s*"([^"]*)"' },
          },
        },
      },
    },
  },
}
