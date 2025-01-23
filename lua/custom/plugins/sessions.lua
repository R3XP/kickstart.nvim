return {
  {
    'rmagatti/auto-session',
    lazy = false,

    config = function()
      vim.o.sessionoptions = 'blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions'
      require('auto-session').setup { suppressed_dirs = {} }
    end,

    ---enables autocomplete for opts
    ---@module "auto-session"
    ---@type AutoSession.Config
    opts = {
      suppressed_dirs = {},
      session_lens = { load_on_setup = true },
      -- log_level = 'debug',
    },
  },
}
