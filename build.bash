#!/bin/bash

if [ $1 == "--debug" ]; then
  jekyll serve --config _config.yml,_config_dev.yml
elif [ $1 == "--release" ]; then
  jekyll build
  cd _site
  git add .
  git commit -m 'updating'
  git push
  cd ..
else
  echo "未定義のオプションです"
  echo "usage:"
  echo "$0 [options]"
  echo "options:"
  echo "        --debug    debug build"
  echo "        --release  build and commit to github"
fi