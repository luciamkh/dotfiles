#!/bin/bash

function make_symlink {
  ln -fns ${1} ${2}
}

linkables=$(find `pwd` -name "*.symlink")
for linkable in ${linkables}
do
  filename=$(echo $linkable | sed 's/.*\///' | sed 's/.symlink//')
  echo "Creating symlink for ${filename} in ${HOME}"
  target="${HOME}/${filename}"
  if [[ -e ${target} && ! -h ${target} ]]; then
    echo "Moving existing file ${target} to ${target}.bak"
    mv ${target} ${target}.bak
  fi
  make_symlink ${linkable} ${target}

done
