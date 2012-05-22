# Class: collectd::client
#
#   This Class installs collect in client mode.
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
class collectd::client {

  include collectd::install
  include collectd::client::config

}
