return {
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {},
  },

  { "lewis6991/gitsigns.nvim" },

  {
    "junegunn/fzf.vim",
    dependencies = { "junegunn/fzf" },
    config = function()
      -- when using :Files, pass the file list through
      --
      --   https://github.com/jonhoo/proximity-sort
      --
      -- to prefer files closer to the current file.
      function list_cmd(fd_cmd)
      	local base = vim.fn.fnamemodify(vim.fn.expand('%'), ':h:.:S')
      	if base == '.' then
      		-- if there is no current file,
      		-- proximity-sort can't do its thing
      		return fd_cmd
      	else
      		return vim.fn.printf('%s | proximity-sort %s', fd_cmd, vim.fn.shellescape(vim.fn.expand('%')))
      	end
      end

      function files_cmd(fd_cmd)
        return function(arg)
        	vim.fn['fzf#vim#files'](arg.qargs, {
            source = list_cmd(fd_cmd),
            options = '--tiebreak=index'
          }, arg.bang)
        end
      end

      vim.api.nvim_create_user_command('Files', files_cmd('fd --type file --follow --strip-cwd-prefix --hidden --exclude .git'), { bang = true, nargs = '?', complete = "dir" })
      vim.api.nvim_create_user_command('AllFiles', files_cmd('fd --type file --follow --strip-cwd-prefix --no-ignore'), { bang = true, nargs = '?', complete = "dir" })
    end
  },
}
