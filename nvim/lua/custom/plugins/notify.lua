return {
  {
    'rcarriga/nvim-notify',
    opts = {},
    config = function()
      vim.notify = require 'notify'

      require('notify').setup {
        background_colour = '#000000',
        merge_duplicates = true,
        top_down = false,
        render = 'minimal',
        stages = 'static',
        icons = {
          DEBUG = 'D',
          ERROR = 'E',
          INFO = 'I',
          TRACE = 'T',
          WARN = 'W',
        },
      }
    end,
  },
}
