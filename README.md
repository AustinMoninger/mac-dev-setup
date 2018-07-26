# My Mac Dev Environment Setup

I try to stay as digitally minimalistic as possible, only downloading exactly what I use and need and getting rid of everything else. I also make sure that at any given time if I lose my device or it is stolen, that there isn't a single item on them that I would lose (other than the physical device itself, of course). 

That was in part the motivation for this repo; I already have all the files I do not want to lose stored in the cloud, but I did not have anyway to remember how I like my machine configured. The other part of the motivation was that over the course of my internship, I had to slowly recall all the settings because my work computer was a clean slate. Now with this page, I can be done with all of that on the first day in a few (several) clicks. I borrowed a lot from [this repository](https://github.com/nicolashery/mac-dev-setup); check it out too.

### Table of Contents
1. [System Update](https://github.com/AustinMoninger/my-mac-dev-setup#system-update)
2. [System Preferences](https://github.com/AustinMoninger/my-mac-dev-setup#system-preferences)
3. [Font Downloads](https://github.com/AustinMoninger/my-mac-dev-setup#font-downloads)
4. [App Downloads](https://github.com/AustinMoninger/my-mac-dev-setup#app-downloads)
5. [Menu Bar App Downloads](https://github.com/AustinMoninger/my-mac-dev-setup#menu-bar-app-downloads)
6. ...
7. ...
8. ...


## System Update

First thing you need to do is update the system! For that: **App Store > Updates**


## System Preferences

Here are some preferences I like to tweak on my new Mac. (All the ones that I could not find `defaults write` commands for that is. The rest of my preferences can be run with the `setup.sh` file in this repository).

* **Finder > Preferences**
    
    * **General > New Finder Windows show:**, set to `Documents`.
    
    * **Sidebar**, uncheck directories I do not want to see in Finder.
    
* **System Preferences**

    * **App Store**, turn off `Automatically check for updates`.
    
    * **Dock**, check `Automatically hide and show dock`. Maximize your screen real estate!
    
    * **Dock > Position on screen:**, select `Left`.

    * **Desktop & Screen Saver > Desktop**, put [this image](https://www.rice.edu/wallpaper/images/Rice_campus_entrance_2048x1536.jpg) and [this image](https://www.rice.edu/wallpaper/images/Rice_sunset_academic_quad_2048x1536.jpg) into `Pictures` Then set `Change picture:` to `Every day`.
    
    * **Energy Saver**, set `Turn display off after:` slider to `5 minutes`.
    
    * **Security & Privacy > General**, set `Require password after sleep begins` to `immediately`.
    
    * **Security & Privacy > FileVault**, set `Turn On FileVault`. Just do it.
    
* **Miscellaneous**

    *
    

    
   


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

[Install Google Chrome](https://www.google.com/chrome/)

Are there really any other options?

#### Google Chrome Extensions
* [Just Read](https://chrome.google.com/webstore/detail/just-read/dgmanlpmmkibanfdgjocnabmcaclkmod?hl=en). Strips webpages down to purely the text so you can actually focus and read the material contained within them. Next step is to find an extension that strips away hypertext links too (let me know if you find one).

* [Grammarly](https://chrome.google.com/webstore/detail/grammarly-for-chrome/kbfnbcaeplbcioakkpcpgfkobkghlhen). Checks your grammar and spelling for you in most places within Chrome. Doesn't work in Google Docs for some reason (I typically just paste my text into [wordcounter.net](https://wordcounter.net/) to have Grammarly check it real quick). Premium version has some extra bells and whistles that I don't pay for.

* [Empty New Tab Page](https://chrome.google.com/webstore/detail/empty-new-tab-page/dpjamkmjmigaoobjbekmfgabipmfilij). Beautiful, blank new tab page that doesn't have the distraction ridden thumbnails that the default new tab page does.

* [Adblock Plus](https://chrome.google.com/webstore/detail/adblock-plus/cfhdojbkjhnklbpkdaibdccddilifddb?hl=en-US). Self-explanatory (assuming that you are okay with not supporting websites via ads).

* [DF YouTube](https://chrome.google.com/webstore/detail/df-youtube-distraction-fr/mjdepdfccjgcndkmemponafgioodelna). Stands for Distraction Free YouTube. Configurable to hide comments and/or related videos. Perfect for when I am trying to use YouTube for school/work and don't want to go down a rabbit hole of watching related content.


### Visual Studio Code
<a href="https://go.microsoft.com/fwlink/?LinkID=534106">
  <img src="https://user-images.githubusercontent.com/28496268/42401177-0f95731a-813a-11e8-8ed7-3c9c004fbd97.png" width="8%" height="8%">
</a>

[Install Visual Studio Code](https://go.microsoft.com/fwlink/?LinkID=534106)

I just got into using this over Atom. I'll add extensions/plugins here when I find some that I like.

#### Configurations
* Open VS Code from Command Line: 

    * Open the **Command Palette (⇧⌘P)** and type `shell commmand` to find `Shell Command: Install 'code command in PATH`.
   
* **Preferences > Settings**

    * in the User Settings JSON file, add `"editor.fontFamily": "Consolas"` and `"editor.fontSize": 14`.


### iTerm2
<a href="https://iterm2.com/downloads/stable/latest">
  <img src="https://user-images.githubusercontent.com/28496268/42415621-6dbdf21a-821a-11e8-86e4-3331f86ba1b5.png" width="10%" height="20%">
</a>

[Install iTerm2](https://iterm2.com/downloads/stable/latest)

Terminal emulator that is highly configurable.

#### Preferences (⌘,)
* **General**

    * Under **Closing**, uncheck `confirm closing multiple sessions` and `confirm quit iTerm2`.
    
* **Profiles**

    * Create a new profile and call it `Austin`. Select `Other Actions...` and `Set as Default`.
    
    * Under **Text**, change `Font` to Consolas 14pt.
    
    * Under **Colors > Color Presets...**, select Solarized Dark.
    
* **Window**

    * Change `Columns` to 110 and `Rows` to 30.
    
   
### Spotify
<a href="https://download.scdn.co/SpotifyInstaller.zip">
  <img src="https://user-images.githubusercontent.com/28496268/43025807-c78b9b6c-8c38-11e8-97b8-a678c73adc0f.png" width="8%" height="8%">
</a>

[Install Spotify](https://download.scdn.co/SpotifyInstaller.zip)

If there is one company that has earned my life-long monthly subscription, it's this one.


## Menu Bar App Downloads


### f.lux
<a href="https://justgetflux.com/dlmac.html">
  <img src="https://user-images.githubusercontent.com/28496268/42609272-65c66f76-8551-11e8-8a3e-099b8cf594f3.png" width="8%" height="18%">
</a>

[Install f.lux](https://justgetflux.com/dlmac.html)

Cool little app that makes the light emitted from your computer less harsh at night time. Something about reducing blue light ¯\\_(ツ)_/¯.

#### Preferences (⌘,)
* set color temperature to `6000K`.

* select `Daytime` and check the box that says `Start at login`.
    
    
### RescueTime
<a href="https://www.rescuetime.com/installers/RescueTimeInstaller.pkg">
  <img src="https://user-images.githubusercontent.com/28496268/42916114-32b00b9c-8ac9-11e8-9c52-8a01b1e6fa7d.png" width="8%" height="18%">
</a>

[Install RescueTime](https://www.rescuetime.com/installers/RescueTimeInstaller.pkg)

App that tracks how much time you spend on certain apps and websites. It gives you a productivity score that you can look by the day/week/month/year. Awareness is the first step.


### Google Backup and Sync
<a href="https://www.google.com/drive/download/backup-and-sync/">
  <img src="https://user-images.githubusercontent.com/28496268/42916257-f0de7c98-8ac9-11e8-81f6-cb4f31d93428.png" width="8%" height="18%">
</a>

[Install Google Backup and Sync](https://www.google.com/drive/download/backup-and-sync/)

Backs up everything on your machine that you choose onto Google Drive. Instant peace of mind.


### Magnet
<a href="https://itunes.apple.com/us/app/magnet/id441258766?mt=12">
  <img src="https://user-images.githubusercontent.com/28496268/43026251-818a3838-8c3a-11e8-832b-c137175e6e67.png" width="8%" height="18%">
</a>

[Install Magnet](https://itunes.apple.com/us/app/magnet/id441258766?mt=12)

Spend just a few minutes memorizing a couple keyboard shortcuts and you are on your way to never clicking-and-dragging to resize a window ever again.

