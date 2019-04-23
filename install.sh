#!/usr/bin/env bash
############################
# This script creates symlinks from the home directory to any desired dotfiles in $HOME/dotfiles
# And also installs all required Packages
############################



# dotfiles directory
dotfiledir=$HOME/dotfiles/dot
installdir=$HOME/dotfiles/install

# list of files/folders to symlink in ${homedir}
files="bash_profile bashrc bash_prompt aliases .gitconfig .hyper.js .gitignore_global"

# change to the dotfiles directory
echo "Changing to the ${dotfiledir} directory"
cd ${dotfiledir}
echo "...done"

# create symlinks (will overwrite old dotfiles)
for file in ${files}; do
    echo "Creating symlink to $file in home directory."
    ln -sf ${dotfiledir}/.${file} $HOME/.${file}
done

# Download Git Auto-Completion
curl "https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash" > $HOME/.git-completion.bash

# Run the Install Script
${installdir}/brew.sh
${installdir}/node.sh
${installdir}/code-extensions.sh
${installdir}/mac.sh


