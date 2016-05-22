# Default parameters

class strongswan::params {

  $package_name = 'strongswan'
  $package_ensure = 'installed'

  $pki_dir = $::osfamily ? {
    'RedHat' => '/etc/pki/tls',
    'Debian' => '/etc/ssl',
  }

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
