return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  lazy = false, -- new nvim-treesitter does not support lazy loading
  config = function()
    -- Install parsers (new API — setup() only handles install_dir)
    require('nvim-treesitter').install {
      'graphql',
      'http',
      'bash',
      'c',
      'diff',
      'html',
      'lua',
      'luadoc',
      'markdown',
      'markdown_inline',
      'query',
      'vim',
      'vimdoc',
      'python',
      'typescript',
      'javascript',
      'tsx',
      'go',
      'rust',
      'css',
      'json',
      'yaml',
      'kotlin',
    }

    -- Highlighting and indentation are no longer managed by nvim-treesitter.
    -- Enable them via FileType autocmd as the new API requires.
    vim.api.nvim_create_autocmd('FileType', {
      callback = function(args)
        pcall(vim.treesitter.start, args.buf)
      end,
    })
  end,
}
