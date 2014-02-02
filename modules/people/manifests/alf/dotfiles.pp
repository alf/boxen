class people::alf::dotfiles {
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
