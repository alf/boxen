class people::alf {
  notify { 'class people::alf declared': }

  include emacs
  include zsh
  include java
  include iterm2::dev
  include iterm2::colors::solarized_light
  include onepassword
  include spotify
  include tmux

  repository {
    '/Users/${::boxen_user}/.emacs.d':
      source   => 'alf/emacs.d',
      provider => 'git';
  }
}

