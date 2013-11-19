class osx_config::trackpad::enable_clicking($dragging = false) {
  # defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadFourFingerVertSwipeGesture -int 2
  # defaults write com.a pple.driver.AppleBluetoothMultitouch.trackpad TrackpadTwoFingerDoubleTapGesture -int 1
  # defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerTapGesture -int 2
  # defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadTwoFingerFromRightEdgeSwipeGesture -int 3
  
  boxen::osx_defaults { 'Enable Four Fingers Vertical Swipe to Mission Control on a Trackpad':
    user   => $::luser,
    domain => 'com.apple.driver.AppleBluetoothMultitouch.trackpad',
    key    => 'TrackpadFourFingerVertSwipeGesture',
    type   => 'int',
    value  => 2,
  }

  boxen::osx_defaults { 'Enable Two Fingers Secondary Click on a Trackpad':
    user   => $::luser,
    domain => 'com.apple.driver.AppleBluetoothMultitouch.trackpad',
    key    => 'TrackpadTwoFingerDoubleTapGesture',
    type   => 'int',
    value  => 1,
  }

  boxen::osx_defaults { 'Enable Lookup with Tree Fingers on Trackpad':
    user   => $::luser,
    domain => 'com.apple.driver.AppleBluetoothMultitouch.trackpad',
    key    => 'TrackpadThreeFingerTapGesture',
    type   => 'int',
    value  => 2,
  }

  boxen::osx_defaults { 'Enable Notification Center on Trackpad':
    user   => $::luser,
    domain => 'com.apple.driver.AppleBluetoothMultitouch.trackpad',
    key    => 'TrackpadTwoFingerFromRightEdgeSwipeGesture',
    type   => 'int',
    value  => 3,
  }

}