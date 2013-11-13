class people::nrako::vimbundle {

  notify { 'class people::nrako::vimbundle declared': }

  file { "${vim::vimrc}": ensure => exists }

  vim::bundle { [
    'The-NERD-tree'
  ]: }

}