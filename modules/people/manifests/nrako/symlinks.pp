class people::nrako::symlinks {

  # http://www.freshblurbs.com/blog/2011/09/25/command-line-javascript-cli-mac-os-x.html
  file { "${boxen::config::homedir}/bin/jsc":
    ensure  => link,
    target  => "/System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Resources/jsc"
  }

}