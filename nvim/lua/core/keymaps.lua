vim.keymap.set('n', 'tw', '<cmd>nohlsearch<CR>')

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
vim.keymap.set('n', '<leader>dl', vim.diagnostic.open_float, { desc = 'Show diagnostics for line' })
vim.keymap.set('n', 'K', function()
  vim.lsp.buf.hover {
    border = 'rounded',
  }
end)

vim.keymap.set('n', ']e', function()
  local diagnostics = vim.diagnostic.get(vim.api.nvim_get_current_buf(), { severity = vim.diagnostic.severity.ERROR })
  if #diagnostics > 0 then
    vim.diagnostic.jump {
      severity = vim.diagnostic.severity.ERROR,
      count = 1,
    }
  else
    vim.notify('No next error found', vim.log.levels.INFO)
  end
end, { desc = 'Next [E]rror' })

vim.keymap.set('n', '[e', function()
  local diagnostics = vim.diagnostic.get(vim.api.nvim_get_current_buf(), { severity = vim.diagnostic.severity.ERROR })
  if #diagnostics > 0 then
    vim.diagnostic.jump {
      severity = vim.diagnostic.severity.ERROR,
      count = -1,
    }
  else
    vim.notify('No previous error found', vim.log.levels.INFO)
  end
end, { desc = 'Previous [E]rror' })

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
