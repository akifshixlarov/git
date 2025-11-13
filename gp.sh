#!/bin/bash
# Avtomatik git add, commit və push skripti

# Əgər commit mesajı verilməyibsə, istifadəçidən soruş
if [ -z "$1" ]; then
  read -p "Commit mesajını daxil et: " commit_message
else
  commit_message=$1
fi

# Git əmrləri
git add .
git commit -m "$commit_message"
git push
