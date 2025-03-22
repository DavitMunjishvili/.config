local function toggleWrap()
  local wrap = vim.wo.wrap
  vim.wo.wrap = not wrap
  if wrap then
    print 'Wrap disabled'
  else
    print 'Wrap enabled'
  end
end

vim.api.nvim_create_user_command('ToggleWrap', toggleWrap, {
  desc = 'Toggle wrap',
})

vim.keymap.set({ 'n', 'v', 'x' }, '<leader>tw', '<cmd>ToggleWrap<CR>')
