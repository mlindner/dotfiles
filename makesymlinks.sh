#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files="gitconfig gitignore_global config/fish config/nvim/init.vim config/streamlink/config mpv/config mpv/input.conf"    # list of files/folders to symlink in homedir

##########

# create dotfiles_old in homedir
echo -n "Creating $olddir for backup of any existing dotfiles in ~ ..."
mkdir -p $olddir
echo "done"

# change to the dotfiles directory
echo -n "Changing to the $dir directory ..."
cd $dir
echo "done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks from the homedir to any files in the ~/dotfiles directory specified in $files
for file in $files; do
	# Note this doesn't check if the file is linked anywhere else
	if [ -h ~/.$file ]; then
		continue
	fi
	echo "Moving any existing dotfiles from ~ to $olddir"
        mkdir -p ~/dotfiles_old/`dirname $file`
	mv ~/.$file ~/dotfiles_old/$file
	echo "Creating symlink to $file in home directory."
	mkdir -p ~/.${file%/*}
	ln -s $dir/$file ~/.$file
done
