# Create the "ipsec.secrets" file

class strongswan::config::secrets inherits strongswan::config {

  concat { "${conf_dir}/ipsec.secrets":
    ensure => present,
    owner  => 'root',
    group  => 'root',
    mode   => '0400',
    notify => Service[$service_name],
  }

}
