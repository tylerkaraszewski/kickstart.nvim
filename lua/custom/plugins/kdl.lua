return {
  {
    'imsnif/kdl.vim',
    ft = 'kdl', -- load only when you open .kdl files
    init = function()
      -- make sure Neovim recognizes *.kdl files
      vim.filetype.add { extension = { kdl = 'kdl' } }
    end,
  },
}
