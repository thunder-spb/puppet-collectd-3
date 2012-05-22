# Class: collectd::server::config
#
#   This Class configures collectd servers.
#
# Parameters:
#
# Actions:
#   - Creates /etc/collectd.d/collectd_server.conf
#
# Requires:
#
# Sample Usage:
#
class collectd::server::config {

  include collectd::config

  collectd::add_monitor { 'collectd_server':
    template_source => 'collectd/server/server.conf',
  }

}
