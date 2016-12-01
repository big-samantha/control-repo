# Base profile for Mac workstations.
class profile::base::mac {
  include homebrew
  include profile::ruby
}
