# Define an IPSec secret

define strongswan::secret (
  
  $secret,
  $secret_name = undef,
  $type = 'XAUTH', $order = '02'

) {

  include strongswan

  if $secret_name {
    $_name = $secret_name
  } else {
    $_name = $name
  }

  concat::fragment { "strongswan::secret::${name}":
    target  => "${strongswan::conf_dir}/ipsec.secrets",
    content => inline_template("<%= @_name %> : <%= @type %> \"<%= @secret %>\"\n"),
    order   => $order;
  }

}
