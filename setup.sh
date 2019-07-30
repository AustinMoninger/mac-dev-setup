#!/usr/bin/env bash

# Color output: usage color "31;5" "string"
color() {
  printf '\033[%sm%s\033[m\n' "$@"
}

color '36;1' "
     ______     __  __     ______     ______   __     __   __    
    /\  __ \   /\ \/\ \   /\  ___\   /\__  _\ /\ \   /\ "-.\ \   
    \ \  __ \  \ \ \_\ \  \ \___  \  \/_/\ \/ \ \ \  \ \ \-.  \  
     \ \_\ \_\  \ \_____\  \/\_____\    \ \_\  \ \_\  \ \_\\"\_\ 
      \/_/\/_/   \/_____/   \/_____/     \/_/   \/_/   \/_/ \/_/ 
                                                             
     This script sets up a Mac the way I like it: https://github.com/AustinMoninger/my-mac-dev-setup
"

# Install Xcode command line tools
color '36;1' '📦  💻  Checking Xcode tools are installed'
xcode-select --install

# Install Homebrew
color '36;1' '📦  🍺  Installing Homebrew'
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install packages
color '36;1' '📦  🍺  Installing packages via Homebrew'
brew install \
  python \
  python3 \
  node \
  redis \
  postgresql \
  
# Install pip
color '36;1' '📦  🐍  Installing Pip Python package manager'
cd ~
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
sudo python get-pip.py
rm get-pip.py

# Install Python packages
color '36;1' '📦  🐍  Installing Python packages'
cd ~
sudo -H pip install --user --ignore-installed six
sudo -H pip install --user requests
sudo -H pip install --user urllib3
sudo -H pip install --user ipython

# Install applications via Homebrew 
color '36;1' '📦  🔎  Installing Google Chrome via Homebrew'
brew cask install google-chrome
color '36;1' '📦  🖥️  Installing iTerm2 via Homebrew'
brew cask install iterm2
color '36;1' '📦  ⌨️   Installing VS Code via Homebrew'
brew cask install visual-studio-code
color '36;1' '📦  🔬  Installing Atom via Homebrew'
brew cask install atom
color '36;1' '📦  🐍  Installing PyCharm CE via Homebrew'
brew cask install pycharm-ce
color '36;1' '📦  🎧  Installing Spotify via Homebrew'
brew cask install spotify
color '36;1' '📦  🎩  Installing Alfred via Homebrew'
brew cask install alfred
color '36;1' '📦  🚼  Installing Postman via Homebrew'
brew cask install postman
color '36;1' '📦  🥞  Installing Sequel Pro via Homebrew'
brew cask install sequel-pro
color '36;1' '📦  📱  Installing Slack via Homebrew'
brew cask install slack
color '36;1' '📦  🗒️  Installing Notion via Homebrew'
brew cask install notion

# Install Menu Bar Applications via Homebrew 
color '36;1' '📦  ⏰  Installing RescueTime via Homebrew'
brew cask install rescuetime
color '36;1' '📦  🌥️  Installing Google Backup and Sync via Homebrew'
brew cask install google-backup-and-sync

# Create ~/Projects directory
color '36;1' '📦  📽️  Creating ~/Projects directory'
mkdir ~/Projects

# Fetch config files from GitHub
cd ~
color '36;1' '📦  🖥️  Getting .gitconfig file from GitHub'
curl -O https://raw.githubusercontent.com/AustinMoninger/my-mac-dev-setup/master/.gitconfig

color '36;1' '📦  🖥️  Getting .vimrc file from GitHub'
cd ~
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
curl -O https://raw.githubusercontent.com/AustinMoninger/my-mac-dev-setup/master/.vimrc

color '36;1' '📦  🖥️  Getting .bash* files from GitHub'
cd ~
curl -O https://raw.githubusercontent.com/AustinMoninger/my-mac-dev-setup/master/.bash_profile
curl -O https://raw.githubusercontent.com/AustinMoninger/my-mac-dev-setup/master/.bash_prompt
curl -O https://raw.githubusercontent.com/AustinMoninger/my-mac-dev-setup/master/.aliases


# Set default write configurations
color '36;1' '📦  ⚡️  Set default write configurations'

# Turn on key repeat 
defaults write -g ApplePressAndHoldEnabled -bool false

# Increase key repeat speed
defaults write -g InitialKeyRepeat -int 10
defaults write -g KeyRepeat -int 1

# Disable "Are you sure you want to open this application" dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Disable Notification Center and remove the menu bar icon
launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist 2> /dev/null

# Disable automatic capitalization as it’s annoying when typing code
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# Disable smart dashes as they're annoying when typing code
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Disable smart quotes as they're annoying when typing code
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Disable automatic period substitution as it's annoying when typing code
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false

# Disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Disable Dashboard
defaults write com.apple.dashboard mcx-disabled -bool true

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Prevent Photos from opening automatically when devices are plugged in
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true

# Disable continuous spell checking (Messages)
defaults write com.apple.messageshelper.MessageController SOInputLineSettings -dict-add "continuousSpellCheckingEnabled" -bool false

# Disable automatic emoji sub (Messages)
defaults write com.apple.messageshelper.MessageController SOInputLineSettings -dict-add "automaticEmojiSubstitutionEnablediMessage" -bool false

# Change default Finder view to column view
defaults write com.apple.Finder FXPreferredViewStyle clmv

# Show all file name extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Stop asking for empty trash
defaults write com.apple.finder WarnOnEmptyTrash -bool false

# Hide hard disks on desktop
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Enable app updates from the Mac App Store to be installed automatically, run the following command with root privileges:
sudo defaults write /Library/Preferences/com.apple.commerce AutoUpdate -bool TRUE

# Remove dock hiding animation
defaults write com.apple.dock autohide-time-modifier -int 0
 
# Trackpad: enable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Automatically hide and show menu bar
defaults write NSGlobalDomain _HIHideMenuBar -bool true

# Use a dark menu bar / dock
defaults write NSGlobalDomain AppleInterfaceStyle -string "Dark"

# Pin dock to left side of screen
defaults write com.apple.dock pinning start

color '32;1' '✅  🎉  Done!'
color '32;1' '💻 Restart your computer for all changes to take place!'
color '32;1' '📖 Be sure to configure iTerm2, System Preferences, VS Code, Alfred, etc. '
color '32;1' '📖 Also sign in to the App Store to download Magnet.'
