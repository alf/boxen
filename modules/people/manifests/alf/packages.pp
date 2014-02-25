class people::alf::packages {
  include emacs
  include zsh
  include iterm2::stable
  include iterm2::colors::solarized_light
  # Add missing dependency in the iterm2 module
  Class['iterm2::stable'] -> Class['iterm2::colors::solarized_light']

  include onepassword
  include spotify
  include tmux
  include dropbox

  package {
    # 'emacs-mu4e-deps':
    [
      'libtool',
      'pkg-config',
      'glib'
    ]:
  }

  package {
    # 'emacs-flyspell-deps':
    [
      'hunspell'
    ]:
  }

  package {
    [
      'maven',
      'graphviz'
    ]:
  }
}
