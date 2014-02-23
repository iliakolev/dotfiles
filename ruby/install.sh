#!/bin/sh

if test ! $(which rbenv)
then
  echo "  Installing rbenv for you."
  git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
fi

if test ! $(which ruby-build)
then
  echo "  Installing ruby-build for you."
  git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
fi
