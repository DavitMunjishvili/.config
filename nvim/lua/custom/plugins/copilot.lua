return {
  {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot',
    config = function()
      require('copilot').setup {
        suggestion = {
          enabled = true,
        },
        panel = {
          enabled = true,
        },
        filetypes = {
          ['*'] = true,
        },
        copilot_node_command = 'node',
        server_opts_overrides = {},
      }
    end,
  },
  {
    'zbirenbaum/copilot-cmp',
    config = function()
      require('copilot_cmp').setup()
    end,
  },
}
