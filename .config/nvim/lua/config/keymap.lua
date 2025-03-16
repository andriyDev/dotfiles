
local keymap = vim.keymap

keymap.set('', '<A-z>', '<cmd>set wrap!<cr>')

keymap.set('', '<C-p>', '<cmd>Telescope frecency workspace=CWD<cr>')

keymap.set('', 'K', function() vim.lsp.buf.hover() end)
keymap.set('', '<F2>', function() vim.lsp.buf.rename() end)
keymap.set('', '<F12>', function() vim.lsp.buf.definition() end)
keymap.set('', '<S-A-F12>', function() vim.lsp.buf.references() end)
keymap.set('', '<C-k>', function() vim.lsp.buf.code_action() end)
keymap.set('', '<C-Space>', function() vim.diagnostic.open_float() end)

