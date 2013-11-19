class osx_config::dashboard::disable_inspace {
  
  boxen::osx_defaults {
    'Don’t show Dashboard as a Space':
      ensure => present,
      key    => 'dashboard-in-overlay',
      domain => 'com.apple.dock',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;
  }
}