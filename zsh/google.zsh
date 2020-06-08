if [[ -f /etc/bash_completion.d/g4d ]]; then
  source /etc/bash_completion.d/g4d

  eval "$(echo "_orig_git_prompt_info() {"; declare -f git_prompt_info | tail -n +2)"
  git_prompt_info() {
    if [[ "$(p4 --format %Client% client -o)" =~ ".+:(.+):.+:.+" ]]; then
      echo "g4:(%{$fg[red]%}$match%{$reset_color%})"
    else
      _orig_git_prompt_info
    fi
  }
fi