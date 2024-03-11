#!/bin/sh

echo "(Git config) Enter your name: "
read name
echo "(Git config) Enter your email: "
read email

git config --global user.name "$name"
git config --global user.email "$email"

echo "Git configuration updated!"
