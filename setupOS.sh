


# Turn on key repeat 
defaults write -g ApplePressAndHoldEnabled -bool false

# Increase key repeat speed
defaults write -g InitialKeyRepeat -int 10
defaults write -g KeyRepeat -int 1

# Disable “Are you sure you want to open this application” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Disable Notification Center and remove the menu bar icon
launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist 2> /dev/null

# Disable automatic capitalization as it’s annoying when typing code
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# Disable smart dashes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Disable smart quotes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Disable automatic period substitution as it’s annoying when typing code
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false

# Disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Disable Dashboard
defaults write com.apple.dashboard mcx-disabled -bool true

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Prevent Photos from opening automatically when devices are plugged in
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true

# Disable continuous spell checking (messages)
defaults write com.apple.messageshelper.MessageController SOInputLineSettings -dict-add "continuousSpellCheckingEnabled" -bool false

# Disable automatic emoji sub (messages)
defaults write com.apple.messageshelper.MessageController SOInputLineSettings -dict-add "automaticEmojiSubstitutionEnablediMessage" -bool false

# Change default Finder view to column view
defaults write com.apple.Finder FXPreferredViewStyle clmv

# Make iTunes not executable (for hitting play button)
sudo chmod -x /Applications/iTunes.app/Contents/MacOS/iTunes

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
 
# Restart Dock
killall Dock

# Restart Mac for all changes to take place
sudo shutdown -r now
