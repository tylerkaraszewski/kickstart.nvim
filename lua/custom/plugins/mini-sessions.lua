return {
  {
    'nvim-mini/mini.sessions',
    version = false,
    lazy = false, -- important: load at startup
    config = function()
      require('mini.sessions').setup {
        autoread = true,
        autowrite = true,
        directory = '',
        file = 'session.vim',
      }
      -- Commands:
      vim.api.nvim_create_user_command('SessionSave', function()
        MiniSessions.write(MiniSessions.config.file)
      end, {})

      vim.api.nvim_create_user_command('SessionLoad', function()
        MiniSessions.read()
      end, {})
    end,
  },
}
