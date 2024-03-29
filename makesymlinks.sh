#!/bin/bash
############################
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files="zshrc tmux.conf"	          # list of files/folders to symlink in homedir

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
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done

# updating iterm2 preferences
# Currently, this links to /users/jared/dotfiles/preferences for PrefsCustomFolder
# This may need to be updated programatically to prevent issues with preferences not being loaded correctly.

# If you just use the symlink, anytime you change something inside iterm2, it deletes the symlink and creates a new
# preference file com.googlecode.iterm2.plist

echo "Removing old iTerm2 preferences"
rm ~/Library/Preferences/com.googlecode.iterm2.plist
echo "creating symlink for new preferences"
ln -s ~/dotfiles/apps/iterm2/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist

echo "Removing old VSCode settings"
rm ~/Library/Application\ Support/Code/User/settings.json
echo "creating symlink for new settings"
ln -s ~/dotfiles/apps/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
