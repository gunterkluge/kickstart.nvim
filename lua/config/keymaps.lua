M = {}

M.keys = {
  { mode = 'i', lhs = 'jk', rhs = '<Esc>' },
  { mode = 'n', lhs = '<Esc>', rhs = '<cmd>nohlsearch<CR>' },
  { mode = 'n', lhs = '<leader>q', rhs = vim.diagnostic.setloclist, opt = { desc = 'Open diagnostic [Q]uickfix list' } },
  { mode = 't', lhs = '<Esc><Esc>', rhs = '<C-\\><C-n>', opt = { desc = 'Exit terminal mode' } },
  { mode = 'n', lhs = '<C-h>', rhs = '<C-w><C-h>', opt = { desc = 'Move focus to the left window' } },
  { mode = 'n', lhs = '<C-l>', rhs = '<C-w><C-l>', opt = { desc = 'Move focus to the right window' } },
  { mode = 'n', lhs = '<C-j>', rhs = '<C-w><C-j>', opt = { desc = 'Move focus to the lower window' } },
  { mode = 'n', lhs = '<C-k>', rhs = '<C-w><C-k>', opt = { desc = 'Move focus to the upper window' } },
  { mode = 'n', lhs = '<C-S-h>', rhs = '<C-w>H', opt = { desc = 'Move window to the left' } },
  { mode = 'n', lhs = '<C-S-l>', rhs = '<C-w>L', opt = { desc = 'Move window to the right' } },
  { mode = 'n', lhs = '<C-S-j>', rhs = '<C-w>J', opt = { desc = 'Move window to the lower' } },
  { mode = 'n', lhs = '<C-S-k>', rhs = '<C-w>K', opt = { desc = 'Move window to the upper' } },
}
M.setup = function()
  for _, key in ipairs(M.keys) do
    vim.keymap.set(key.mode, key.lhs, key.rhs, key.opt)
  end
end
return M
