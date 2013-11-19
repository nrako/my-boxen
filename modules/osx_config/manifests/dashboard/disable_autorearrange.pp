class osx_config::dashboard::disable_autorearrange {

  # Don’t automatically rearrange Spaces based on most recent use
  # defaults write com.apple.dock mru-spaces -bool false

  boxen::osx_defaults {
    'Disable auto-rearrange on Spaces':
      ensure => present,
      key    => 'mru-spaces',
      domain => 'com.apple.dock',
      value  => 'false',
      type   => 'bool',
      user   => $::boxen_user;
  }
}