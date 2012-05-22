# Define: collectd::add_monitor
#
#   This definition adds a configuration file to /etc/collectd.d/.
#
# Parameters:
#
# $template_source::    Set the location of the template to install.
#
# Actions:
#   Installs a file in /etc/collectd.d/
#
# Requires:
#   - Class['collectd::config']
#
# Sample Usage:
#
# collectd::add_monitor { 'collectd_mysql':
#   template_source => 'mysql/collectd_mysql.conf',
# }
#
define collectd::add_monitor($template_source) {

  include collectd::params

  file { "/etc/collectd.d/${name}.conf":
    ensure  => present,
    content  => template($template_source),
    require => Class['collectd::config'],
    notify  => Class['collectd::service'],
  }

}
