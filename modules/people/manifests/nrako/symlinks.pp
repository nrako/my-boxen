class people::nrako::symlinks {

  # http://www.freshblurbs.com/blog/2011/09/25/command-line-javascript-cli-mac-os-x.html
  file { "${boxen::config::homedir}/bin/jsc":
    ensure  => link,
    target  => "/System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Resources/jsc"
  }


  file { "/Users/${::boxen_user}/Library/Keyboard Layouts/Swiss FR Dev.keylayout":
    source  => 'puppet:///modules/people/Swiss FR Dev.keylayout',
    require => File["${boxen::config::srcdir}"],
  }

}