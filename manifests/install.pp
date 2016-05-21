# Install strongswan

class strongswan::install inherits strongswan {

  package { 'strongswan':
    ensure => $package_ensure,
    name   => $package_name,
  }

}
