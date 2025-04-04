require("config.lazy")

require("format_on_save")
require("config_cmd")

vim.opt.scrolloff = 10
vim.opt.cc = { 100 }
vim.opt.wrap = false
vim.opt.signcolumn = 'yes'

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.hlsearch = true
vim.opt.wildmode = 'list:longest'

vim.opt.number = true
vim.opt.relativenumber = true

vim.keymap.set('', '<A-z>', '<cmd>set wrap!<cr>')

vim.keymap.set('', '<C-p>', '<cmd>Files<cr>')
vim.keymap.set('', '<A-C-p>', '<cmd>AllFiles<cr>')
vim.keymap.set('', '<C-S-p>', '<cmd>Commands<cr>')
vim.keymap.set('', 'K', function() vim.lsp.buf.hover() end)
vim.keymap.set('', '<F12>', function() vim.lsp.buf.definition() end)
vim.keymap.set('', '<C-Space>', function() vim.diagnostic.open_float() end)

vim.keymap.set({'n', 'v', 'i'}, '<C-Tab>', '<cmd>tabnext<cr>')
vim.keymap.set({'n', 'v', 'i'}, '<C-S-Tab>', '<cmd>tabprevious<cr>')

