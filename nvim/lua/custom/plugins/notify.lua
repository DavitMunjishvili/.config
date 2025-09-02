return {
  {
    'rcarriga/nvim-notify',
    opts = {},
    config = function()
      vim.notify = require 'notify'

      require('notify').setup {
        fps = 1,
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
