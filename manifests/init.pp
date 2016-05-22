# Class: strongswan
# ===========================
#
# Install and configure strongswan.
#
# Parameters
# ----------
#
# * `package_name`
# The name of the strongswan package.
# Defaults to 'strongswan'.
#
# * `package_ensure`
# Any valid parameter passed to the ensure parameter of the package resource.
# Defaults to 'installed'. Can be 'absent' or a specific version.
#
# * `conf_dir`
# The base configuration directory.
# Defaults should work on RedHat and Debian OS families.
#
# * `service_name`
# The name of the strongswan service.
# Defaults should work on RedHat and Debian OS families.
#
# * `service_ensure`
# Defaults to 'running'.
#
# Examples
# --------
#
# @example
#    class { 'strongswan': }
#
# Authors
# -------
#
# Philippe Muller <philippe.muller@gmail.com>
#
# Copyright
# ---------
#
# Copyright 2016 Philippe Muller
#
class strongswan (

  $package_name = $strongswan::params::package_name,
  $package_ensure = $strongswan::params::package_ensure,
  $conf_dir = $strongswan::params::conf_dir,
  $pki_dir = $strongswan::params::pki_dir,
  $service_name = $strongswan::params::service_name,
  $service_ensure = $strongswan::params::service_ensure,
  $service_enable = $strongswan::params::service_enable,
  $host_key_name = $strongswan::params::host_key_name,

) inherits strongswan::params {

  include strongswan::install
  include strongswan::config
  include strongswan::service
  include strongswan::host_key

}
