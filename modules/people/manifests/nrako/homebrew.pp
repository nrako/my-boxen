class people::nrako::homebrew {

  notify { 'class people::nrako::homebrew declared': }

  package {
    [
      'tree',
      'heroku',
      'heroku-toolbelt'
    ]:
  }

}