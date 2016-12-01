# Set up Ruby environment for workstations
class profile::ruby {
  Package {
    provider => 'homebrew',
  }

  $prereqs = [
    'openssl',
    'libyaml',
    'libffi',
  ]

  $packages = [
    'rbenv',
    'ruby-build',
  ]

  package { $prereqs:
    ensure => present,
  }

  package { $packages:
    ensure  => present,
    require => Package[$prereqs],
  }
}
