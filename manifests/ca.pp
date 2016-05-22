# Define a Certificate Authority

define strongswan::ca (
  $cacert,
  $crluri = undef,
  $ocspuri = undef,
  $auto = 'add',
  $order = '05',
) {

  include strongswan

  concat::fragment { "strongswan::ca::${name}":
    target  => "${strongswan::conf_dir}/ipsec.conf",
    content => template("${module_name}/ca.erb"),
    order   => $order,
  }

}
