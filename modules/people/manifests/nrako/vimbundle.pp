class people::nrako::vimbundle {

  file { "${vim::vimrc}": ensure => exists }

  vim::bundle { [
    'The-NERD-tree'
  ]: }

}