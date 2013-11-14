class people::nrako::osx {


  osx::recovery_message { 'If this Mac is found, please call +41 79 176 32 52 or email me at nico@nrako.com': }

  include osx::finder::unhide_library

  class { 'osx::global::key_repeat_delay': delay => 0 }
  class { 'osx::global::key_repeat_rate': rate => 2 }

  include osx::global::disable_autocorrect
  include osx::global::expand_print_dialog
  include osx::global::expand_save_dialog

  include osx::dock::autohide
  class { 'osx::dock::icon_size': 
    size => 42
  }

  include osx::finder::empty_trash_securely

  # TODOS

  # boxen::osx_defaults {
  #   'Disable the dashboard':
  #     ensure => present,
  #     key    => 'mcx-disabled',
  #     domain => 'com.apple.dashboard',
  #     value  => 'true',
  #     type   => 'bool',
  #     user   => $::boxen_user;

  #   'Don’t show Dashboard as a Space':
  #     ensure => present,
  #     key    => 'dashboard-in-overlay',
  #     domain => 'com.apple.dock',
  #     value  => 'true',
  #     type   => 'bool',
  #     user   => $::boxen_user;
  # }

  # Trackpad: enable tap to click for this user and for the login screen
  # defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
  # defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
  # defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

  # defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag -bool true
  # defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadFourFingerVertSwipeGesture -int 2
  # defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadTwoFingerDoubleTapGesture -int 1
  # defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerTapGesture -int 2
  # defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadTwoFingerFromRightEdgeSwipeGesture -int 3

  # Don’t show Dashboard as a Space
  # defaults write com.apple.dock dashboard-in-overlay -bool true

  # Don’t automatically rearrange Spaces based on most recent use
  # defaults write com.apple.dock mru-spaces -bool false

  # Make Dock icons of hidden applications translucent
  # defaults write com.apple.dock showhidden -bool true

  # Don’t display the annoying prompt when quitting iTerm
  # defaults write com.googlecode.iterm2 PromptOnQuit -bool false

  # Enable Safari’s debug menu
  # defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

  # Enable the Develop menu and the Web Inspector in Safari
  # defaults write com.apple.Safari IncludeDevelopMenu -bool true
  # defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
  # defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true

  # Add a context menu item for showing the Web Inspector in web views
  # defaults write NSGlobalDomain WebKitDeveloperExtras -bool true


  ###############################################################################
  # Time Machine                                                                #
  ###############################################################################

  # Prevent Time Machine from prompting to use new hard drives as backup volume
  # defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

  # ressources
  #https://github.com/seanknox/my-boxen/blob/master/modules/people/manifests/seanknox/config.pp
}