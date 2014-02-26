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
      'offlineimap',
      'html2text',
      'glib',
      'gmime',
      'xapian',
    ]:
  }

  package {
    # 'emacs-flyspell-deps':
    [
      'hunspell',
    ]:
  }

  file { "/Library/Spelling":
    source  => 'puppet:///modules/people/alf/dictionaries',
    recurse => true,
    require => Package[hunspell]
  }
  ->
  file { "/Library/Spelling/default.aff":
    ensure => link,
    source => "/Library/Spelling/en-US.aff",
  }
  ->
  file { "/Library/Spelling/default.dic":
    ensure => link,
    source => "/Library/Spelling/en-US.dic",
  }
  
  package {
    [
      'maven',
      'graphviz'
    ]:
  }
}
