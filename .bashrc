#!/bin/bash

export DOTFILES="${HOME}/dotfiles"

for f in $(find ${DOTFILES} -type f -name aliases.sh)
do
  source ${f}
done

if [ -f /usr/share/autojump/autojump.sh ]; then
  . /usr/share/autojump/autojump.sh
fi
