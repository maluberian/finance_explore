#!/usr/bin/env bash

init() {
  if [[ -x $(which python) ]]
  then
    echo "Python exists!"
  else
    echo "No Python :("
  fi
}

case $1 in
  "init")
    # shellcheck disable=SC1073
    init()
    ;;
  *)
    echo "Nothing to do"
    ;;
esac