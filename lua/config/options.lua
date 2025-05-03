local M = {}

M.options = {
  number = true,
  mouse = 'a',
  showmode = false,
  clipboard = 'unnamedplus',
  breakindent = true,
  undofile = true,
  ignorecase = true,
  smartcase = true,
  signcolumn = 'yes',
  updatetime = 250,
  timeoutlen = 300,
  splitright = true,
  splitbelow = true,
  list = true,
  listchars = { tab = '» ', trail = '·', nbsp = '␣' },
  inccommand = 'split',
  cursorline = true,
  scrolloff = 10,
  confirm = true,
}
function M.setup()
  for key, value in pairs(M.options) do
    if key == 'clipboard' then
      vim.schedule(function()
        vim.opt[key] = value
      end)
    else
      vim.opt[key] = value
    end
  end
end
return M
