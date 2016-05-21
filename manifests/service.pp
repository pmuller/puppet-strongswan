# Manage the strongswan service

class strongswan::service inherits strongswan {

  service { $service_name:
    ensure => $service_running,
    enable => $service_enable;
  }

}
