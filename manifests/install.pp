# Class: collectd::install
#
#   This Class installs the collectd package.
#
# Parameters:
#
# Actions:
#   - Installs collectd.
#
# Requires:
#
# Sample Usage:
#
class collectd::install {

  include collectd::service

  package { 'collectd.x86_64':
    ensure => present,
  }

}
