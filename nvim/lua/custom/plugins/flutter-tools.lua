return {
  {
    'akinsho/flutter-tools.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'stevearc/dressing.nvim',
    },
    config = true,
  },
  {
    'neovim/nvim-lspconfig',
    opts = {
      servers = {
        dartls = {},
      },
    },
  },
}
