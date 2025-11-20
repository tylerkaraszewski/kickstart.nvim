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
    end,
  },
}
