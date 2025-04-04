function fish_prompt --description 'Write out the prompt'
  set -l normal (set_color normal)

  set -g color_cwd 'blue'
  set -l suffix '$'
  if functions -q fish_is_root_user; and fish_is_root_user
    if set -q fish_color_cwd_root
      set color_cwd 'red'
    end
    set suffix '#'
  end

  set -g fish_prompt_pwd_dir_length 0
  set -g fish_color_user 'green'

  echo -n -s (set_color $fish_color_user) $USER '@' (prompt_hostname) (set_color normal) ':' (set_color $color_cwd) (prompt_pwd) (set_color green) (fish_git_prompt) (set_color normal) ' ' $suffix ' '
end
