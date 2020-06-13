_rafops_ruby_update() {
  cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1
  git pull origin master
  docker build --tag rafops/ruby .
}

ruby() {
  [[ -n "$(docker image ls -q rafops/ruby)" ]] || _rafops_ruby_update
  docker run -i --rm -v "$(pwd):/root/workdir" -a stdin -a stdout rafops/ruby "$@"
}
