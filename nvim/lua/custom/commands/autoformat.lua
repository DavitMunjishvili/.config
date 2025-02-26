vim.api.nvim_create_user_command('FormatDisable', function()
  vim.g.disable_autoformat = true
end, {
  desc = 'Disable autoformat-on-save',
  bang = true,
})

vim.api.nvim_create_user_command('FormatEnable', function()
  vim.g.disable_autoformat = false
end, {
  desc = 'Re-enable autoformat-on-save',
})

vim.api.nvim_create_user_command('FormatToggle', function()
  vim.g.disable_autoformat = not vim.g.disable_autoformat
end, {
  desc = 'Toggle autoformat-on-save',
})

vim.keymap.set('n', '<leader>tf', '<cmd>FormatToggle<CR>')
