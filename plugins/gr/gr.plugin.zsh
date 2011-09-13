# Quickly access your ~/code directory
#  Setting $CODE_HOME will use that instead of ~/code
function gr(){
  cd "$(git rev-parse --show-toplevel)/$1"
}
