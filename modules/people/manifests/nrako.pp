class people::nrako {

  notify { 'class people::nrako declared': }

  include people::nrako::apps
  include people::nrako::dotfiles
  #include people::nrako::git
  include people::nrako::homebrew
  #include people::nrako::symlinks
  include people::nrako::loginitems
  include people::nrako::osx
  include people::nrako::sublime_text_3
}