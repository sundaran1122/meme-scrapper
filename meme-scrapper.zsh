#!/bin/zsh

download () {

  cd $MEMES

  curl -s -H "User-agent: memescraper 1.0" https://www.reddit.com/r/$1/hot.json\?limit=$2 > meme.json
  cat meme.json | jq '.' > meme-clean.json
  rm meme.json

  cat meme-clean.json | grep url_overridden_by_dest | cut -d\" -f 4 > urls.txt
  rm meme-clean.json

  cd $1

  cat ../urls.txt
  echo -n "do you want to install these images[Y/n]: "
  read choice
  [[ $choice == *"n"* ]] && exit

  for meme in $(cat ../urls.txt)
  do
    echo "installing $meme"
    wget $meme &> /dev/null &
  done

  rm ../urls.txt
}

download $1 $2
