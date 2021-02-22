#!/bin/zsh

mkdir -p ~/.local/bin

memes="~/Memes"
echo "the default is $memes"
echo -n "do you want a custom memes location [Y/n]:"
read choice

if [[ $choice == *y* ]]
  then
    echo -n "path to memes:"
    read memes
fi

mkdir -v memes
cp meme-scrapper.zsh ~/.local/bin/meme-scrapper

echo -n "pro-tip: if you are on a window manager such as bspwm or herbstluftwm with a config file in shell, you can"
echo "give the path to your window manager config. if not, give the path to your shell rc"

echo -n "where to permanatly save this:"
read shrc
echo $shrc

exit
echo "export MEMES=\"$memes\"" >> $shrc
