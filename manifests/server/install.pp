# Class: collectd::server::install
#
#   This Class installs collectd servers.
#
# Parameters:
#
# Actions:
#   - Installs collectd-rrdtool
#
# Requires:
#
# Sample Usage:
#
class collectd::server::install {

  include collectd::install

  package { 'collectd-rrdtool':
    ensure => present,
  }

}
