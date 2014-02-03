class people::alf::dotfiles {
  $home = "/Users/${::boxen_user}"

  $dotfiles_dir = "${boxen::config::srcdir}/dotfiles"
  $emacs_dir = "${boxen::config::srcdir}/emacs.d"

  repository { "${emacs_dir}":
      source   => 'alf/emacs.d',
  }

  repository { "${dotfiles_dir}":
    source   => 'alf/dotfiles',
  }

  file { "${home}/.emacs.d":
    ensure => link,
    target => "${emacs_dir}",
    require => Repository[$emacs_dir]
  }

  file { "${home}/.zshenv":
    ensure => link,
    target => "${dotfiles_dir}/.zshenv",
    require => Repository[$dotfiles_dir]
  }

  file { "${home}/.zshrc":
    ensure => link,
    target => "${dotfiles_dir}/.zshrc",
    require => Repository[$dotfiles_dir]
  }

  file { "${home}/.hgrc":
    ensure => link,
    target => "${dotfiles_dir}/.hgrc",
    require => Repository[$dotfiles_dir]
  }

  file { "${home}/.pylintrc":
    ensure => link,
    target => "${dotfiles_dir}/.pylintrc",
    require => Repository[$dotfiles_dir]
  }

  file { "${home}/.screenrc":
    ensure => link,
    target => "${dotfiles_dir}/.screenrc",
    require => Repository[$dotfiles_dir]
  }

  file { "${home}/.vimrc":
    ensure => link,
    target => "${dotfiles_dir}/.vimrc",
    require => Repository[$dotfiles_dir]
  }

  file { "${home}/.gitconfig":
    ensure => link,
    target => "${dotfiles_dir}/.gitconfig",
    require => Repository[$dotfiles_dir]
  }
}
