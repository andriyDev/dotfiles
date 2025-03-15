return {
  {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'kyazdani42/nvim-web-devicons',
    },
    opts = function(_, opts)
      local actions = require('telescope.actions')
      return {
        defaults = {
          layout_strategy = 'vertical',
          layout_config = {
            vertical = {
              prompt_position = 'top',
              mirror = true,
            },
          },
          sorting_strategy = 'ascending',
          mappings = {
            i = {
              ['<esc>'] = actions.close,
            },
          },
          path_display = function(opts, path)
            -- We'd prefer to just use telescope.utils.path_tail, but we need to wait for
            -- https://github.com/nvim-telescope/telescope.nvim/pull/3127
            local tail = path:match("^.*[/\\]([^/\\]*)$")
            if tail == nil then
              tail = path
            end
            local head
            if path ~= tail then
              head = path:sub(1, path:len() - tail:len() - 1)
            else
              head = ''
            end

            if head == '' then
              return tail
            end
            return string.format("%s (%s)", tail, head)
          end,
        },
      }
    end,
  },
}
