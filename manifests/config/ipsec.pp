# Configure ipsec

class strongswan::config::ipsec inherits strongswan::config {

  $ipsec_conf = "${conf_dir}/ipsec.conf"

  concat { $ipsec_conf:
    ensure => present,
    owner  => 'root',
    group  => 'root',
    mode   => '0400',
    notify => Service[$service_name],
  }

  concat::fragment { 'strongswan::config::ipsec::header':
    target => $ipsec_conf,
    source => 'puppet:///modules/strongswan/ipsec.header.conf',
    order  => '01';
  }

}
