#!/usr/bin/env bash

#set -x;

cd "$(dirname "${BASH_SOURCE}")";
abs_path=$(realpath .)

#function doIt() {
#	rsync --exclude ".git/" \
#		--exclude ".DS_Store" \
#		--exclude ".osx" \
#		--exclude "bootstrap.sh" \
#		--exclude "README.md" \
#		--exclude "LICENSE-MIT.txt" \
#		-avh --no-perms . ~;
#	source ~/.bash_profile;
#}

function doIt() {
#	rsync .bash_profile \
#	      .bash_prompt \
#	      .bashrc \
#	      .exports \
#	      .extra \
#	      .path \
#	      .aliases \
#	      .tmux.conf \
#	      ~;
# create the symlinks. single point of update.
  for file in .{bash_profile,bash_prompt,bashrc,exports,extra,path,aliases,tmux.conf}; do
    ln -s "$abs_path/$file" ~/"$file"
  done;
  unset file;
	source ~/.bash_profile;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
	fi;
fi;
unset doIt;
