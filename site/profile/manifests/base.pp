# Base profile that routes to correct os-specific profiles.
class profile::base {
  # Write a profile for each OS family you care to manage.

  case $::facts['osfamily'] {
    'darwin': { include profile::base::mac }
    default: { fail("Platform ${$::facts['osfamily']} is not supported.") }
  }
}
