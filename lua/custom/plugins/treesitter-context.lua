return {
  'nvim-treesitter/nvim-treesitter-context',
  event = { 'BufReadPost', 'BufNewFile' },
  config = function()
    require('treesitter-context').setup {
      enable = true, -- enable by default
      max_lines = 3, -- how many lines of context to show
      trim_scope = 'outer', -- which scope to trim if too long
      mode = 'cursor', -- show context for cursor position
      multiline_threshold = 20, -- how many lines before collapsing context
      separator = nil, -- set to '─' for a visible separator
      zindex = 20, -- stacking order
    }
  end,
}
