class people::nrako::sublime_text_3 {

  $base = "/Users/${::boxen_user}/Library/Application Support"

  # exec { 'Idempotent creation of User preferences directory':
  #   command => "mkdir -p '${base}/Sublime Text/Packages/User'"
  # }

  # file { "${base}/Sublime Text 2/Packages/User/Preferences.sublime-settings":
  #   ensure  => link,
  #   target  => "${::boxen_srcdir}/dotfiles/sublime_text_3/Packages/User/Preferences.sublime-settings",
  #   require => Repository["dotfiles"],
  # }

  sublime_text_3::package { 'GitGutter':
    source => 'jisaacks/GitGutter'
  }
  sublime_text_3::package { 'Better CoffeeScript':
    source => 'aponxi/sublime-better-coffeescript'
  }
  sublime_text_3::package { 'DocBlockr':
    source => 'spadgos/sublime-jsdocs'
  }
  sublime_text_3::package { 'Emmet':
    source => 'sergeche/emmet-sublime'
  }
  sublime_text_3::package { 'JsFormat':
    source => 'jdc0589/JsFormat'
  }
  sublime_text_3::package { 'JSHint Gutter':
    source => 'victorporof/Sublime-JSHint'
  }
  sublime_text_3::package { 'LESS':
    source => 'danro/LESS-sublime'
  }
  sublime_text_3::package { 'Markdown Preview':
    source => 'revolunet/sublimetext-markdown-preview'
  }
  sublime_text_3::package { 'Haml':
    source => 'handcrafted/handcrafted-haml-textmate-bundle'
  }
  sublime_text_3::package { 'Jade':
    source => 'miksago/jade-tmbundle'
  }
  sublime_text_3::package { 'SidebarEnhancements':
    source => 'titoBouzout/SideBarEnhancements'
  }
  # sublime_text_3::package { 'SublimeLinter':
  #   source => 'SublimeLinter/SublimeLinter'
  # }
  sublime_text_3::package { 'SublimePuppet':
    source => 'russCloak/SublimePuppet'
  }
  sublime_text_3::package { 'jQuery':
    source => 'SublimeText/jQuery'
  }
  sublime_text_3::package { 'SublimeCodeIntel':
    source => 'SublimeCodeIntel/SublimeCodeIntel'
  }
  sublime_text_3::package { 'TrailingSpaces':
    source => 'SublimeText/TrailingSpaces'
  }
  sublime_text_3::package { 'Grunt':
    source => 'tvooo/sublime-grunt'
  }
  sublime_text_3::package { 'Alignement':
    source => 'wbond/sublime_alignment'
  }
  sublime_text_3::package { 'Gist':
    source => 'condemil/Gist'
  }
  sublime_text_3::package { 'EditorConfig':
    source => 'sindresorhus/editorconfig-sublime'
  }


  # Python/Django related
  sublime_text_3::package { 'Djaneiro':
    source => 'squ1b3r/Djaneiro'
  }
  # sublime_text_3::package { 'Python PEP8 Autoformat':
  #   source => 'StephaneBunel/pythonpep8autoformat'
  # }
  sublime_text_3::package { 'Python Flake​8 Lint':
    source => 'dreadatour/Flake8Lint'
  }

}