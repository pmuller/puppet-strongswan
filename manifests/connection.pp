# Configure an IPSec connection

define strongswan::connection (

  $ikelifetime = '120m',
  $keylife = '20m',
  $rekeymargin = '3m',
  $keyingtries = 1,
  $keyexchange = 'ikev2',
  $mobike = undef,
  $left = undef,
  $leftcert = 'host',
  $leftsendcert = undef,
  $leftid = undef,
  $leftfirewall = undef,
  $leftsubnet = undef,
  $leftsourceip = undef,
  $leftauth = undef,
  $right = undef,
  $rightsubnet = undef,
  $rightsourceip = undef,
  $rightid = undef,
  $rightdns = undef,
  $rightauth = undef,
  $rightauth2 = undef,
  $type = undef,
  $auto = undef,
  $authby = undef,
  $xauth = undef,
  $order = '10',

) {

  include strongswan

  concat::fragment { "strongswan::connection::${name}":
    target  => "${strongswan::conf_dir}/ipsec.conf",
    content => template("${module_name}/connection.erb"),
    order   => $order,
    notify  => Service[$strongswan::service_name];
  }

}
