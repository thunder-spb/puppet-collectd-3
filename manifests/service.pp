# Class: collectd::server
#
#   This Class ensures that collectd is running.
#
# Parameters:
#
# Actions:
#
# Requires:
#   - Class['collectd::install']
#   - Class['collectd::config'],
#
# Sample Usage:
#
class collectd::service {

  service { 'collectd':
    ensure  => true,
    enable  => true,
    require => Class['collectd::install', 'collectd::config'],
  }

}
