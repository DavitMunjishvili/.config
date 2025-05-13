return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    {
      '\\',
      function()
        vim.cmd 'Neotree reveal'
      end,
      desc = 'NeoTree reveal',
    },
  },
  ---@module "neo-tree"
  ---@type neotree.Config?
  opts = {
    filesystem = {
      hijack_netrw_behavior = 'disabled',
      window = {
        position = 'current',
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
  },
}
