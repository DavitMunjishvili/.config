-- <space> as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.cmd [[
  autocmd ColorScheme * highlight NormalFloat guibg=#282828
  autocmd ColorScheme * highlight FloatBorder guifg=white guibg=#282828
]]

vim.g.have_nerd_font = true

-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.disable_autoformat = true

-- [[ Setting options ]]
require 'core.options'

-- [[ Basic Keymaps ]]
require 'core.keymaps'

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

local custom_commands = { 'autoformat', 'toggle-wrap' }
for _, cmd in ipairs(custom_commands) do
  require('custom.commands.' .. cmd)
end

-- [[ `lazy.nvim` plugin manager ]]
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  'tpope/vim-sleuth',
  { import = 'core.plugins.which-key' },
  { import = 'core.plugins.telescope' },
  { import = 'core.plugins.lsp' },
  { import = 'core.plugins.conform' },
  { import = 'core.plugins.completion' },
  { import = 'core.plugins.ui' },
  { import = 'core.plugins.treesitter' },
  require 'kickstart.plugins.debug',
  require 'kickstart.plugins.lint',
  require 'kickstart.plugins.autopairs',
  require 'kickstart.plugins.neo-tree',
  require 'kickstart.plugins.gitsigns',
  { import = 'custom.plugins' },
}, {
  ui = {
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
