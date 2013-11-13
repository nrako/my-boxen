class people::nrako::apps {

  notify { 'class people::nrako::apps declared': }

  # browsers
  include firefox
  include chrome
  include chrome::canary
  include opera

  # others
  include alfred

  # dev
  include sublime_text_3
  include sublime_text_3::package_control
  include vim
  include wget
  include nvm

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