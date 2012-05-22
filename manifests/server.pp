# Class: collectd::server
#
#   This Class installs collectd servers.
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
class collectd::server {

  include collectd::server::install
  include collectd::server::config

}
