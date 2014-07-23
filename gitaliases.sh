#!/bin/bash
git config --global alias.lg "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
git config --global alias.s status
git config --global alias.f fetch
git config --global alias.bam push
git config --global alias.r rebase
git config --global alias.m mergetool
git config --global alias.c commit