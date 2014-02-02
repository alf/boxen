class people::alf::keyboard {
  file { "/Library/Keyboard Layouts/Dvorak Custom Mac.keylayout":
    ensure  => 'file',
    source  => 'puppet:///modules/people/alf/Dvorak Custom Mac.keylayout',
  }

  file { "/Users/alf/Library/Preferences/com.apple.HIToolbox.plist":
    ensure  => 'file',
    source  => 'puppet:///modules/people/alf/com.apple.HIToolbox.plist',
  }

  file { "/Users/alf/Library/Preferences/com.apple.systemuiserver.plist":
    ensure  => 'file',
    source  => 'puppet:///modules/people/alf/com.apple.systemuiserver.plist',
  }
}
