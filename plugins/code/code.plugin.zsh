# Quickly access your ~/code directory
#  Setting $CODE_HOME will use that instead of ~/code
function c(){
  local code_path=${CODE_HOME}

  if [[ "$code_path" == ""  ]]; then
    code_path="$HOME/code"
  fi

  if [ -d "$code_path/$1" ]; then
    cd "$code_path/$1"
  fi
}

function gg(){
  local git_path="$(git rev-parse --show-toplevel)"

  if [[ -d "$git_path/.git" ]]; then
    cd "$git_path/$1"
  fi
}

function rr(){
  local curr_path=`pwd`
  while [[ ! -d $curr_path/script ]] || [[ ! -d $curr_path/app ]] ; do
    curr_path=`dirname $curr_path`

    if [[ $curr_path == '/' ]] ; then 
      echo "Not in a rails project"
      return
    fi

  done

  cd "$curr_path/$1" > /dev/null
}
