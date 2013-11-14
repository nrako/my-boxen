class people::nrako::sublime_text_3 {

  $base = "/Users/${::boxen_user}/Library/Application Support"

  # exec { 'Idempotent creation of User preferences directory':
  #   command => "mkdir -p '${base}/Sublime Text 2/Packages/User'"
  # }

  # file { "${base}/Sublime Text 2/Packages/User/Preferences.sublime-settings":
  #   ensure  => link,
  #   target  => "${::boxen_srcdir}/dotfiles/sublime_text_3/Packages/User/Preferences.sublime-settings",
  #   require => Repository["dotfiles"],
  # }

  # sublime_text_3::package { 'GitGutter':
  #   source => 'jisaacks/GitGutter'
  # }
  # sublime_text_3::package { 'Haml':
  #   source => 'handcrafted/handcrafted-haml-textmate-bundle'
  # }
  # sublime_text_3::package { 'Jade':
  #   source => 'miksago/jade-tmbundle'
  # }
  # sublime_text_3::package { 'SidebarEnhancements':
  #   source => 'titoBouzout/SideBarEnhancements'
  # }
  # sublime_text_3::package { 'SublimeAllAutocomplete':
  #   source => 'alienhard/SublimeAllAutocomplete'
  # }
  # sublime_text_3::package { 'SublimeLinter':
  #   source => 'SublimeLinter/SublimeLinter'
  # }
  # sublime_text_3::package { 'SublimePuppet':
  #   source => 'russCloak/SublimePuppet'
  # }
  # sublime_text_3::package { 'jQuery':
  #   source => 'SublimeText/jQuery'
  # }
  # sublime_text_3::package { 'Theme - Phoenix':
  #   source => 'netatoo/phoenix-theme'
  # }
  # sublime_text_3::package { 'Theme - Flatland':
  #   source => 'thinkpixellab/flatland'
  # }

}