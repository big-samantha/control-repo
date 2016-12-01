# Base profile for Mac workstations.
class profile::base::mac (
  String $user = 'zee',
) {
  class { 'homebrew':
    user => $user,
  }

  include profile::ruby
}
