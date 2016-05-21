# Default parameters

class strongswan::params {

  $package_name = 'strongswan'
  $package_ensure = 'installed'

  $conf_dir = $::osfamily ? {
    'RedHat' => '/etc/strongswan',
    'Debian' => '/etc',
  }

  $service_name = $::osfamily ? {
    'RedHat' => 'strongswan',
    'Debian' => 'ipsec',
  }
  $service_ensure = 'running'
  $service_enable = true

  $host_key_name = 'host'

}
