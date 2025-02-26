-- Add this to your lazy.nvim setup
return {
  {
    'zbirenbaum/copilot.lua',
    config = function()
      require('copilot').setup {
        suggestion = {
          enabled = true,
          auto_trigger = true,
          debounce = 75,
          keymap = {
            accept = '<C-CR>', -- Use Ctrl+Shift+y to accept suggestions
            next = '<C-n>', -- Use Ctrl+n to see the next suggestion
            prev = '<C-p>', -- Use Ctrl+p to see the previous suggestion
            dismiss = '<C-c>', -- Use Ctrl+c to dismiss the suggestion
          },
        },
        panel = { -- Panel settings
          enabled = false,
          auto_refresh = true,
          keymap = {
            jump_prev = '[[', -- Jump to the previous suggestion
            jump_next = ']]', -- Jump to the next suggestion
            accept = '<CR>', -- Accept the selected suggestion
            refresh = 'gr', -- Refresh suggestions
            open = '<A-CR>', -- Open suggestion in panel
          },
        },
        filetypes = {
          ['*'] = true,
        },
        copilot_node_command = 'node',
        server_opts_overrides = {},
      }
    end,
  },
}
