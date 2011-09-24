# Quickly access your ~/code directory
#  Setting $CODE_HOME will use that instead of ~/code
function gr(){
  local git_path="$(git rev-parse --show-toplevel)"

  if [[ -d "$git_path/.git" ]]; then
    cd "$git_path/$1"
  fi
}
