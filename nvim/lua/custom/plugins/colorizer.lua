return {
  {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup {
        'css',
        'scss',
        'jsx',
        'tsx',
      }
    end,
    event = { 'BufReadPre', 'BufNewFile' },
  },
}
