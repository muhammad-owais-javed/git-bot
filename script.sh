#!/bin/bash

#User Information
USER="GitBot"
EMAIL="GitBot@email.com"

#ScriptDirectory
SCR_DIR="$(dirname "$(readlink -f "$0")")"
cd $SCR_DIR

#Last Log
echo "*Auto Commit Script*" > log.txt
echo "User: $USER" >> log.txt
echo "Script DIR: $SCR_DIR" >> log.txt
echo "Last Activity: $(date +%D-%H:%M:%S)" >> log.txt
echo " " >> log.txt

#Git Configuration
git config user.name "$USER"
git config user.email "$EMAIL"

#Git Commit
git add . 
git commit -m "Auto Commit @$(date +%H:%M:%S)"
git push >> log.txt 2>&1 
