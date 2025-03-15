local module_dir = vim.fn.stdpath('config')..'/lua/local'
for _, file in ipairs(vim.fn.readdir(module_dir, [[v:val =~ '\.lua$']])) do
  if not file:match('init.lua$') then
    require('local.'..file:gsub('%.lua$', ''))
  end
end
