#!/bin/bash

# cd to the dirictory this script is in
cd "$(dirname "${BASH_SOURCE}")"

# get the latest and greatest from my baller git repo
git pull

# copy everything in this folder to your $HOME folder
function copyToHome() {
	rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" --exclude "README.md" -av . ~
}

# just a little check to make sure you really want to do the rsync
if [ "$1" == "--force" -o "$1" == "-f" ]; then
	copyToHome
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		copyToHome
	fi
fi

# not sure why this needs to be here
unset copyToHome

# because .profile wouldn't be executed again until next time you log in.
# No need to source .bashrc, because I do it in .profile
source ~/.profile
