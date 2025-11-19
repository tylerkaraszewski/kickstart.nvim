return {
  'ojroques/nvim-osc52',
  config = function()
    local osc52 = require 'osc52'

    -- Automatically copy to system clipboard on yank
    vim.api.nvim_create_autocmd('TextYankPost', {
      callback = function()
        if vim.v.event.operator == 'y' and vim.v.event.regname == '' then
          osc52.copy_register '"'
        end
      end,
    })

    -- Optional: manual copy mappings
    vim.keymap.set('n', '<leader>c', osc52.copy_operator, { expr = true, desc = 'OSC52 copy operator' })
    vim.keymap.set('n', '<leader>cc', '<leader>c_', { remap = true, desc = 'OSC52 copy line' })
  end,
}
