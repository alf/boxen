class people::alf {
  include emacs
  include zsh
  include iterm2::stable
  include iterm2::colors::solarized_light
  include onepassword
  include spotify
  include tmux
  include dropbox

  package {
    [
      'maven',
      'graphviz'
    ]:
  }   

  $home = "/Users/${::boxen_user}"
  $emacs_dir = "${boxen::config::srcdir}/emacs.d"
  repository { "${emacs_dir}":
      source   => 'alf/emacs.d',
  }

  file { "${home}/.emacs.d":
    ensure => link,
    target => "${emacs_dir}",
    require => Repository[$emacs_dir]
  }
}

