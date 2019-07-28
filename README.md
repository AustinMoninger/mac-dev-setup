# My Mac Dev Environment Setup

*All in one setup script found in [setup.sh](https://github.com/AustinMoninger/my-mac-dev-setup/blob/master/setup.sh). There's a handful of things to do manually like downloading Magnet from the App Store and some System Preferences configurations.*

I try to stay digitally minimalistic, only downloading exactly what I use and need and getting rid of everything else. I also make sure that at any given time if I lose my device or it is stolen, that there isn't a single item on them that I would lose (other than the physical device itself, of course). 

That was in part the motivation for this repo; I already have all the files I do not want to lose stored in the cloud, but I did not have anyway to remember how I like my machine configured. The other part of the motivation was that over the beginning of my internship in the summer of 2018 I received a computer that was a clean slate, and instead of being able to configure it how I liked all at once, I had to slowly recall all the settings I liked over the course of the summer. Now with this page, I can be done with all of that on the first day in a few (several) clicks. I borrowed a lot from [this repository](https://github.com/nicolashery/mac-dev-setup); check it out too.

### Table of Contents
1. [System Update](https://github.com/AustinMoninger/my-mac-dev-setup#system-update)
2. [System Preferences](https://github.com/AustinMoninger/my-mac-dev-setup#system-preferences)
3. [Developer Configurations](https://github.com/AustinMoninger/my-mac-dev-setup#developer-configurations)
4. [Font Downloads](https://github.com/AustinMoninger/my-mac-dev-setup#font-downloads)
5. [App Downloads](https://github.com/AustinMoninger/my-mac-dev-setup#app-downloads)
6. [Menu Bar App Downloads](https://github.com/AustinMoninger/my-mac-dev-setup#menu-bar-app-downloads)

## System Update
<a href="https://support.apple.com/en-us/HT201541">
  <img src="https://user-images.githubusercontent.com/28496268/43357864-a12a2176-924d-11e8-846d-8d13ea0ce3ca.png" width="8%" height="8%">
</a>

First thing you need to do is update the system! For that: **App Store > Updates**


## System Preferences
<a href="https://support.apple.com/kb/PH25594?locale=en_US&viewlocale=en_US">
  <img src="https://user-images.githubusercontent.com/28496268/43357865-a2c3bb6e-924d-11e8-91e2-3bcfd528a9bd.png" width="9%" height="9%">
</a>

Here are some preferences I like to tweak on my new Mac. (All the ones that I could not find `defaults write` commands for that is. The rest of my preferences can be run with the `setup.sh` file in this repository).

* **Finder > Preferences**
    
    * **General > New Finder Windows show:**, set to `Documents`.
    
    * **Sidebar**, uncheck directories I do not want to see in Finder.
    
* **System Preferences**
    
    * **App Store**, turn off `Automatically check for updates`.
    
    * **Dock**, check `Automatically hide and show dock`. Maximize your screen real estate!
    
    * **Desktop & Screen Saver > Desktop**, put [this image](https://user-images.githubusercontent.com/28496268/46102770-bcb37c00-c194-11e8-81f9-46afbdcd8da6.jpg) into `Pictures`.
    
    * **Energy Saver**, set `Turn display off after:` slider to `15 minutes`.
    
    * **Security & Privacy > General**, set `Require password after sleep begins` to `immediately`.
    
    * **Security & Privacy > FileVault**, set `Turn On FileVault`. Just do it.

    * **Trackpad**, check `Tap to Click`.
    
* **Miscellaneous**

    * Organize Dock content like this from top to bottom:
         * Finder
         * Chrome
         * Calendar
         * Spotify
         * Notes (to be replaced by Notion?)
         * ——
         * Downloads folder
         * Trash
         
    * Create a `~/Projects` directory for all my version-controlled projects.

## Developer Configurations

### Homebrew
<a href="https://brew.sh/">
  <img src="https://user-images.githubusercontent.com/28496268/43357867-a461e306-924d-11e8-9cb0-633d79c7bded.png" width="9%" height="9%">
</a>

Package managers make it easier to install and update applications (for Operating Systems) or libraries (for programming languages). The most popular one for OS X is [Homebrew](https://brew.sh/).

Homebrew needs Command Line Tools for Xcode.

    $ xcode-select --install
    
Install Homebrew.

    $ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    
Helpful commands:

    $ brew update             # update Homebrew's directory
    $ brew outdated           # see if any packages need to be updated
    $ brew upgrade <package>  # update a package
    $ brew upgrade            # update all outdated packages
    $ brew cleanup            # remove older versions of installed packages
    $ brew list --versions    # see what you have installed and their versions
    
    
### Pretty Terminal
<a href="https://github.com/AustinMoninger/my-mac-dev-setup/blob/master/.bash_profile">
  <img src="https://user-images.githubusercontent.com/28496268/42415621-6dbdf21a-821a-11e8-86e4-3331f86ba1b5.png" width="8%" height="19%">
</a>

To make the text in terminal look a little more appealing, follow these commands to overwrite your current Unix user's profile. I shamelessly got these files from [this repository](https://github.com/nicolashery/mac-dev-setup) because it looks really nice.

    $ cd ~
    $ curl -O https://raw.githubusercontent.com/AustinMoninger/my-mac-dev-setup/master/.bash_profile
    $ curl -O https://raw.githubusercontent.com/AustinMoninger/my-mac-dev-setup/master/.bash_prompt
    $ curl -O https://raw.githubusercontent.com/AustinMoninger/my-mac-dev-setup/master/.aliases


### Git
<a href="https://git-scm.com/">
  <img src="https://user-images.githubusercontent.com/28496268/43357868-a5ecebc6-924d-11e8-815d-301ec301f13e.png" width="8%" height="8%">
</a>

Hard to get very far in software development without this one. Add the [.gitconfig](https://github.com/AustinMoninger/my-mac-dev-setup/blob/master/.gitconfig) file to add some colors to the git commands.

    $ brew install git
    $ cd ~
    $ curl -O https://raw.githubusercontent.com/AustinMoninger/my-mac-dev-setup/master/.gitconfig

Note: My email and name are in this config file.


### Vim
<a href="https://www.vim.org/">
  <img src="https://user-images.githubusercontent.com/28496268/43357869-a6d89cb0-924d-11e8-9cae-8f00ec74ec7e.png" width="8%" height="8%">
</a>

Vim is already installed and I only really use Vim when I must. But since it doesn't look all that pretty and [Tim Pope](https://github.com/tpope) has put together some nice defaults already, I might as well use them.

Install [pathogen.vim](https://github.com/tpope/vim-pathogen) with:

    $ mkdir -p ~/.vim/autoload ~/.vim/bundle
    $ curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

Add the `~/.vimrc` file:

    $ curl -O https://raw.githubusercontent.com/AustinMoninger/my-mac-dev-setup/master/.vimrc


### Python
<a href="https://www.python.org/">
  <img src="https://user-images.githubusercontent.com/28496268/43358253-1b5585de-9254-11e8-8073-f9e12c2ab26b.png" width="8%" height="8%">
</a>

OS X comes with [Python](https://www.python.org/) already installed but using Homebrew makes it easier to keep your installation up to date. 

    $ brew install python
    $ brew install python3

#### Pip
    
Helpful Pip commands:
  
    $ pip install <package>            # install a package
    $ pip install --upgrade <package>  # upgrade a package
    $ pip freeze                       # see what is installed
    $ pip uninstall <package>          # uninstall a package
    
#### Virtualenv

Install Virtualenv so that you can install packages required for a certain project in an isolated folder within the project that will be managed by virtualenv. That way if different project require different versions of packages you do not have to deal with changing the global package version (and keep your global installations fairly clean).

    $ pip install virtualenv
    
Helpful commands:

    $ virtualenv venv --distribute                          # setup virtualenv in this directory
    $ virtualenv venv --distribute --system-site-packages   # inherit globally installed packages
    $ source venv/bin/activate                              # activate (venv)
    $ pip install <package>                                 # when (venv) is active, installs package in venv folder


### Others
<a href="https://nodejs.org/en/download/">
  <img src="https://user-images.githubusercontent.com/28496268/62000735-67394b80-b093-11e9-8c25-7ada81151a02.png" width="8%" height="8%">
</a>

    $ brew install node
 
<a href="https://redis.io/download">
  <img src="https://user-images.githubusercontent.com/28496268/62000854-bb91fa80-b096-11e9-92f0-6fa198ee7ad6.png" width="8%" height="8%">
</a>

    $ brew install redis

<a href="https://www.postgresql.org/download/">
  <img src="https://user-images.githubusercontent.com/28496268/62000855-bcc32780-b096-11e9-84fb-7de64114bb46.png" width="8%" height="8%">
</a>

    $ brew install postgresql
    

## Font Downloads

### Consolas Font Family
<a href="http://www.fontpalace.com/font-download/Consolas/">
  <img src="https://user-images.githubusercontent.com/28496268/42415599-d96530f6-8219-11e8-8ee6-e4fa7c96c5e6.jpg" width="10%" height="15%">
</a>

[Install Consolas Font Family](http://www.fontpalace.com/font-download/Consolas/)

Code looks nice in `this font`. It comes installed with Microsoft Office but otherwise you have to download it.


## App Downloads


### Google Chrome 
<a href="https://www.google.com/chrome/">
  <img src="https://user-images.githubusercontent.com/28496268/42400783-8e1829a0-8138-11e8-91b9-85ba7fa7ac9a.png" width="10%" height="10%">
</a>

Are there really any other options?

[Install Google Chrome](https://www.google.com/chrome/): ([must install Homebrew first](https://github.com/AustinMoninger/my-mac-dev-setup#homebrew))

    $ brew cask install google-chrome

#### Google Chrome Extensions
* [Just Read](https://chrome.google.com/webstore/detail/just-read/dgmanlpmmkibanfdgjocnabmcaclkmod?hl=en). Strips webpages down to purely the text so you can actually focus and read the material contained within them. Next step is to find an extension that strips away hypertext links too (let me know if you find one).

* [Grammarly](https://chrome.google.com/webstore/detail/grammarly-for-chrome/kbfnbcaeplbcioakkpcpgfkobkghlhen). Checks your grammar and spelling for you in most places within Chrome. Doesn't work in Google Docs for some reason (I typically just paste my text into [wordcounter.net](https://wordcounter.net/) to have Grammarly check it real quick). Premium version has some extra bells and whistles that I don't pay for.

* [Motivation](https://chrome.google.com/webstore/detail/motivation/ofdgfpchbidcgncgfpdlpclnpaemakoj?hl=en). My favorite new tab page.

* [Adblock Plus](https://chrome.google.com/webstore/detail/adblock-plus/cfhdojbkjhnklbpkdaibdccddilifddb?hl=en-US). Self-explanatory (assuming that you are okay with not supporting websites via ads).

* [DF YouTube](https://chrome.google.com/webstore/detail/df-youtube-distraction-fr/mjdepdfccjgcndkmemponafgioodelna). Stands for Distraction Free YouTube. Configurable to hide comments and/or related videos. Perfect for when I am trying to use YouTube for school/work and don't want to go down a rabbit hole of watching related content.

* [Loom](https://chrome.google.com/webstore/detail/loom-video-recorder-scree/liecbddmkiiihnedobmlmillhodjkdmb?hl=en-US).
Incredible tool to seamlessly record screen videos and share them.

* [JSON Formatter](https://chrome.google.com/webstore/detail/json-formatter/bcjindcccaagfpapjjmafapmmgkkhgoa?hl=en).
Format JSON that appears in your browser.

* [Quick Tabs](https://chrome.google.com/webstore/detail/quick-tabs/jnjfeinjfmenlddahdjdmgpbokiacbbb?hl=en).
Fuzzy search your open tabs.

* [CLUT: Cycle Last Used Tabs](https://chrome.google.com/webstore/detail/clut-cycle-last-used-tabs/cobieddmkhhnbeldhncnfcgcaccmehgn?hl=en).
Jump forward and back through recently used tabs like you would in code. Go to [chrome://extensions/shortcuts] to change `Go Back` to `cmd + i` and `Go Forward` to `cmd + o`.


### Visual Studio Code
<a href="https://go.microsoft.com/fwlink/?LinkID=534106">
  <img src="https://user-images.githubusercontent.com/28496268/42401177-0f95731a-813a-11e8-8ed7-3c9c004fbd97.png" width="8%" height="8%">
</a>

My go-to text editor.

[Install Visual Studio Code](https://go.microsoft.com/fwlink/?LinkID=534106):

    $ brew cask install visual-studio-code
    
Other editors and IDEs:

    $ brew cask install atom
    $ brew cask install pycharm-ce


#### Configurations
   
* **Preferences > Settings**

    * Put `.vscode/settings.json` in the settings.
    * Put `.vscode/keybindings.json` in the settings.

* TODO: extensions I like will go here


### iTerm2
<a href="https://iterm2.com/downloads/stable/latest">
  <img src="https://user-images.githubusercontent.com/28496268/42415621-6dbdf21a-821a-11e8-86e4-3331f86ba1b5.png" width="9%" height="18%">
</a>

Terminal emulator that is highly configurable.

[Install iTerm2](https://iterm2.com/downloads/stable/latest):

    $ brew cask install iterm2

#### Preferences (⌘,)
* **General**

    * Under **Closing**, uncheck `confirm closing multiple sessions` and `confirm quit iTerm2`.
    
* **Profiles**

    * Create a new profile and call it `Austin`. Select `Other Actions...` and `Set as Default`.
    
    * Under **Text**, change `Font` to Consolas 14pt.
    
    * Under **Colors > Color Presets...**, select Solarized Dark.

    * Under **Terminal**, check `Unlimited scrollback`.
    
* **Window**

    * Change `Columns` to 110 and `Rows` to 30.
    
   
### Spotify
<a href="https://download.scdn.co/SpotifyInstaller.zip">
  <img src="https://user-images.githubusercontent.com/28496268/43025807-c78b9b6c-8c38-11e8-97b8-a678c73adc0f.png" width="8%" height="8%">
</a>

If there is one company that has earned my life-long monthly subscription, it's this one.

[Install Spotify](https://download.scdn.co/SpotifyInstaller.zip):

    $ brew cask install spotify


### Alfred
<a href="https://www.alfredapp.com/powerpack/">
  <img src="https://user-images.githubusercontent.com/28496268/61932862-3fce6b80-af39-11e9-96f9-40d697256f05.png" width="8%" height="8%">
</a>

One of the most powerful tools on my Mac! Replacement Spotlight.

[Install Alfred](https://www.alfredapp.com/powerpack/):

    $ brew cask install alfred

Look through `Features` and pick things that make sense. Get a Powerpack license.

Workflows to download:

  * `Open with Visual Studio Code`
  
  
### Postman
<a href="https://www.getpostman.com/downloads/">
  <img src="https://user-images.githubusercontent.com/28496268/61991899-b045bd00-b00b-11e9-9aa1-24cd577cf38d.png" width="8%" height="8%">
</a>

Helpful for API development.

[Install Postman](https://www.getpostman.com/downloads/):

    $ brew cask install postman
    

### Sequel Pro
<a href="https://sequelpro.com/download">
  <img src="https://user-images.githubusercontent.com/28496268/61997795-ea3eaf80-b05b-11e9-9385-44073c2103b2.png" width="8%" height="8%">
</a>

Nice UI for querying databases.

[Install Sequel Pro](https://sequelpro.com/download/):

    $ brew cask install sequel-pro
    
    
### Slack
<a href="https://slack.com/downloads/mac">
  <img src="https://user-images.githubusercontent.com/28496268/62001075-8ee0e180-b09c-11e9-9e2a-ca0d7810caa5.png" width="8%" height="8%">
</a>

Best workplace messaging app!

[Install Slack](https://slack.com/downloads/mac):

    $ brew cask install slack
    
    
## Menu Bar App Downloads


### f.lux
<a href="https://justgetflux.com/dlmac.html">
  <img src="https://user-images.githubusercontent.com/28496268/42609272-65c66f76-8551-11e8-8a3e-099b8cf594f3.png" width="8%" height="18%">
</a>

Cool little app that makes the light emitted from your computer less harsh at night time. Something about reducing blue light ¯\\_(ツ)_/¯.

[Install f.lux](https://justgetflux.com/dlmac.html):

    $ brew cask install flux

#### Preferences (⌘,)
* set color temperature for `Daytime` to `4500K`, `Sunset` to `3500K`, and `Bedtime` to `2000K`.

* select `Daytime` and check the box that says `Start at login`.
    
    
### RescueTime
<a href="https://www.rescuetime.com/installers/RescueTimeInstaller.pkg">
  <img src="https://user-images.githubusercontent.com/28496268/42916114-32b00b9c-8ac9-11e8-9c52-8a01b1e6fa7d.png" width="8%" height="18%">
</a>

App that tracks how much time you spend on certain apps and websites. It gives you a productivity score that you can look by the day/week/month/year. Awareness is the first step.

[Install RescueTime](https://www.rescuetime.com/installers/RescueTimeInstaller.pkg):

     $ brew cask install rescuetime


### Google Backup and Sync
<a href="https://www.google.com/drive/download/backup-and-sync/">
  <img src="https://user-images.githubusercontent.com/28496268/42916257-f0de7c98-8ac9-11e8-81f6-cb4f31d93428.png" width="9%" height="19%">
</a>

Backs up everything on your machine that you choose onto Google Drive. Instant peace of mind.

[Install Google Backup and Sync](https://www.google.com/drive/download/backup-and-sync/):

    $ brew cask install google-backup-and-sync


### Magnet (not in setup.sh)
<a href="https://itunes.apple.com/us/app/magnet/id441258766?mt=12">
  <img src="https://user-images.githubusercontent.com/28496268/43026251-818a3838-8c3a-11e8-832b-c137175e6e67.png" width="9%" height="19%">
</a>

[Install Magnet](https://itunes.apple.com/us/app/magnet/id441258766?mt=12)

Spend just a few minutes memorizing a couple keyboard shortcuts and you are on your way to never clicking-and-dragging to resize a window ever again. Only available on the App Store.
