# Class: collectd::params
#
#   This Class sets various parameters for collectd.
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
class collectd::params {

  $server = hiera(collectd_server)

}
