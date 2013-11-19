class people::nrako::apps {

  # browsers
  include firefox
  include chrome
  include chrome::canary
  include opera

  # others
  include alfred
  include ohmyzsh
  include ukulele # ukelele

  # dev
  include sublime_text_3
  #include sublime_text_3::package_control
  # waiting for vim + vundle instead of pathogene https://github.com/JHaals/puppet-vim/commit/c2404af5fc86a2feb3fa906f77fe5dded3a995af
  #include vim
  include wget
  #include nvm
  include github_for_mac

  # virtualization
  include virtualbox

  # media
  include transmission
  include mplayerx


  #include asciiio
  #include appcleaner
  #include brow http://blog.timschroeder.net/2013/04/15/Bring-Brow-to-Alfred/
  #include dropbox
  #https://github.com/boxen/puppet-dockutil
  #include graphviz
  #include onepassword
  #include osx https://github.com/boxen/puppet-osx
  #inlude openssl 
  #include postgresapp
  #include spotify
  #include LudereSolutions/puppet-parallels

}