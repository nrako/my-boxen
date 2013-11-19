class people::nrako::keyboards {
  $plist = "com.apple.HIToolbox.plist"

  file { "/Users/${::boxen_user}/Library/Keyboard Layouts/Swiss FR Dev.keylayout":
    ensure  => 'link',
    source  => 'puppet:///modules/people/Swiss FR Dev.keylayout',
    require => File["${boxen::config::srcdir}"],
  }
  ->
  people::nrako::plistbuddy { 'Enabling My keyboard layout 1':
    plist    => $plist,
    property => 'AppleEnabledInputSources:2:InputSourceKind',
    type     => 'string',
    value    => 'Keyboard Layout',
  }
  ->
  people::nrako::plistbuddy { 'Enabling My keyboard layout 2':
    plist    => $plist,
    property => 'AppleEnabledInputSources:2:KeyboardLayout Name',
    type     => 'string',
    value    => 'Swiss FR Dev',
  }
  ->
  people::nrako::plistbuddy { 'Enabling My keyboard layout 3':
    plist    => $plist,
    property => 'AppleEnabledInputSources:2:KeyboardLayout ID',
    type     => 'int',
    value    => -8386,
  }
  
  people::nrako::plistbuddy { 'Select My keyboard':
    plist    => $plist,
    property => 'AppleEnabledInputSources:0:KeyboardLayout ID',
    type     => 'int',
    value    => -8386,
  }

  people::nrako::plistbuddy { 'Select My keyboard':
    plist    => $plist,
    property => 'AppleEnabledInputSources:0:KeyboardLayout Name',
    type     => 'string',
    value    => 'Swiss FR Dev',
  }

  # ->
  # people::nrako::plistbuddy { 'Show character palette in input menu 2':
  #   plist    => $plist,
  #   property => 'AppleEnabledInputSources:3:Bundle ID',
  #   type     => 'string',
  #   value    => 'com.apple.CharacterPaletteIM',
  # }
  # ->
  # people::nrako::plistbuddy { 'Show keyboard viewer in input menu 1':
  #   plist    => $plist,
  #   property => 'AppleEnabledInputSources:4:InputSourceKind',
  #   type     => 'string',
  #   value    => 'Non Keyboard Input Method',
  # }
  # ->
  # people::nrako::plistbuddy { 'Show keyboard viewer in input menu 2':
  #   plist    => $plist,
  #   property => 'AppleEnabledInputSources:4:Bundle ID',
  #   type     => 'string',
  #   value    => 'com.apple.KeyboardViewer',
  # }
}