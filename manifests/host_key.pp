# Declare the host key

class strongswan::host_key inherits strongswan {

  strongswan::secret { 'host':
    secret      => "${pki_dir}/private/${host_key_name}.key",
    secret_name => '',
    type        => 'RSA',
  }

}
