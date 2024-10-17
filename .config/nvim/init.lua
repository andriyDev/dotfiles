require("config.lazy")

require("format_on_save")

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

vim.keymap.set('', '<C-p>', '<cmd>Files<cr>')
vim.keymap.set('', 'K', function() vim.lsp.buf.hover() end)

