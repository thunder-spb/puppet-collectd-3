# Class: collectd::config
#
#   This Class configures collectd clients.
#
# Parameters:
#
# Actions:
#   - Installs /etc/collectd.conf
#   - Creates /etc/collectd.d
#
# Requires:
#
# Sample Usage:
#
class collectd::config {

  file { '/etc/collectd.conf':
    ensure => present,
    source => 'puppet:///modules/collectd/collectd.conf',
    notify => Service['collectd'],
  }

  file { '/etc/collectd.d':
    ensure => directory,
    owner  => 'root',
    group  => 'root',
  }

}
