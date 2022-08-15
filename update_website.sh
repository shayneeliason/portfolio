#!/usr/bin/env zsh

cd /Users/shayne/Documents/mom_website 

python yaml_to_json.py

npm run build
sleep 20
echo "dist built"
bash git.sh

cp -R dist/* /Users/shayne/Documents/mom_website/shayneeliason.github.io
echo "copied files to shayneeliason.github.io"

cd /Users/shayne/Documents/mom_website/shayneeliason.github.io
echo "in shayneeliason.github.io"
sleep .2
bash git.sh
echo "git committed in update_website.sh"
sleep 2
echo "website updated :)"
