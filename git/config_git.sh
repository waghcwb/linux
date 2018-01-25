#!/usr/bin/env bash

wget https://cdn.rawgit.com/waghcwb/linux/master/git/.gitignore --directory-prefix ~/

git config --global core.excludesfile ~/.gitignore
git config --global core.filemode false
git config --global core.editor vim
git config --global alias.lg "log --graph --abbrev-commit --decorate --date=iso --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%cd)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)'"
git config --global alias.st "status -sb"
git config --global merge.ours.driver true
git config --global pull.ff only
git config --global merge.ff false
git config --global alias.conflicts "diff --name-only --diff-filter=U"
