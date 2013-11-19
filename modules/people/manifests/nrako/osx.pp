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

  include osx_config::dashboard::disable_inspace
  include osx_config::dashboard::disable_autorearrange
  class {'osx_config::trackpad::enable_clicking':
    dragging => true,
  }
  include osx_config::disable_boot_chime

  # TODO removd app quarantaine unidentifed developer

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


  # https://github.com/mosen/puppet-osx-powermgmt
}