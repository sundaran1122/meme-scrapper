# MEME SCRAPPER!!

this is a very small scripts that helps you scrape any subreddit for images. this is primarily intended towards people who
like to see memes. this is very minimal but pretty powerfull.

# How is this differant from other reddit scrapping scripts such as redyt?

this will provide a full management system rather than a simple scrapper. its intention is also differant and is designed with
more hardcore reddit users in mind. it also does parellel downloads greatly improving the speed.
# Usage
the general format of the command is

```
meme-scrapper <subreddit without r/> <number of posts to download>
```

then make a directory with the name of the subreddit(eg memes,linuxmasterrace,linuxmemes,unixporn) inside your $MEMES direcctory. now run the command from anywhere. for now,
it takes the top hot posts, downloads them, and saves them in their subreddits folder. after this, you can view and manage them.

# instalation

currently this is not in any standard repos or the AUR so you have to install it manually

## manual installation
``` bash
git clone https://github.com/sundaran1122/meme-scrapper
cd meme-scrapper
./install.zsh
```

the script will walk you through the installation.
