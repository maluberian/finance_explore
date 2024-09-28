#!/usr/bin/env bash

function setup_python() {
  if [[ ! -d ./.venv ]]
  then
    echo "Setting up the .venv virtual environment"
    python -m venv .venv
  fi
  source .venv/bin/activate
  pip install --upgrade pip
  pip install --upgrade pandas
  pip install --upgrade plotly
}

function setup() {
  # Check that we have python installed and that it is Python 3
  if [[ -x $(which python) && $(python -V) =~ ^Python\ 3 ]]
  then
    echo "Preparing python environment"
    setup_python
  else
    >&2 echo "No Python 3 :( - Please, install python to continue"
    exit
  fi
}

function env() {
  if [[ ! -f .env ]]
  then
    >&2 echo  "No environment found. Please, create one by copying env.tmpl to .env"
  fi
  source ./.env
}

case $1 in
  init)
    setup
    ;;
  env)
    env
    ;;
  *)
    echo "Nothing to do"
    ;;
esac