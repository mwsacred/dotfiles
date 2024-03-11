# Disable press-and-hold for keys in favor of key repeat.
defaults write -g ApplePressAndHoldEnabled -bool false

# Use AirDrop over every interface. srsly this should be a default.
defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1

# Always open everything in Finder's list view. This is important.
defaults write com.apple.Finder FXPreferredViewStyle Nlsv

# Show the ~/Library folder.
chflags nohidden ~/Library

# Set a really fast key repeat.
defaults write -g KeyRepeat -int 1
defaults write -g InitialKeyRepeat -int 15

# change fn key
defaults write -g com.apple.keyboard.fnState -bool true

# tap to click
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true

# Set the Finder prefs for showing a few different volumes on the Desktop.
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Run the screensaver if we're in the bottom-left hot corner.
defaults write com.apple.dock wvous-bl-corner -int 5
defaults write com.apple.dock wvous-bl-modifier -int 0

# Disable auto-correct
defaults write -g NSAutomaticSpellingCorrectionEnabled -bool false

# Clear Dock
defaults write com.apple.dock persistent-apps -array '()'
defaults write com.apple.dock orientation right
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock "show-recents" -bool false

# Disable shortcuts about man page in Terminal
defaults write pbs NSServicesStatus -dict-add "com.apple.Terminal - Open man Page in Terminal - openManPage" '{
        "enabled_context_menu" = 0;
        "enabled_services_menu" = 0;
        "presentation_modes" =         {
            ContextMenu = 0;
            ServicesMenu = 0;
        };
    }'

defaults write pbs NSServicesStatus -dict-add "com.apple.Terminal - Search man Page Index in Terminal - searchManPages" '{
        "enabled_context_menu" = 0;
        "enabled_services_menu" = 0;
        "presentation_modes" =         {
            ContextMenu = 0;
            ServicesMenu = 0;
        };
    }'
