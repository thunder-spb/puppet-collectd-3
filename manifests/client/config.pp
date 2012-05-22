# Class: collectd::client::config
#
#   This Class configures collectd clients.
#
# Parameters:
#
# Actions:
#   - Creates /etc/collectd.d/collectd_client.conf
#
# Requires:
#
# Sample Usage:
#
class collectd::client::config {

  include collectd::config

  collectd::add_monitor { 'collectd_client':
    template_source => 'collectd/client/client.conf',
  }

}
