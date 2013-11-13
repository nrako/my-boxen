class people::nrako::loginitems {

  notify { 'class people::nrako::loginitems declared': }

    osx_login_item {
    'Alfred 2':
      name    => 'Alfred 2',
      path    => '/Applications/Alfred 2.app',
      hidden  => true;

   # 'Fantastical':
   #    name    => 'Fantastical',
   #    path    => '/Applications/Fantastical.app',
   #    hidden  => true;

   #  'Moom':
   #    name    => 'Moom',
   #    path    => '/Applications/Moom.app',
   #    hidden  => false;
  }

}