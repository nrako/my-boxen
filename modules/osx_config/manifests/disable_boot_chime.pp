class osx_config::disable_boot_chime {
  
  include osx_config::sudoers

  exec { 'Disable the boot chime':
    command => 'nvram SystemAudioVolume=%80﻿',
    user    => 'root',
    require => Sudoers[ 'boot_chime' ],
  }
}