class osx_config::trackpad::scrolling_speed($speed = 0.6875) {
  boxen::osx_defaults { 'Set the scrolling speed of trackpad':
    user   => $::luser,
    domain => 'NSGlobalDomain',
    key    => 'com.apple.trackpad.scrolling',
    type   => 'float',
    value  => $speed,
  }
}