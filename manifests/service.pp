# Manage the strongswan service

class strongswan::service inherits strongswan {

  service { $service_name:
    name       => $service_name,
    ensure     => $service_ensure,
    enable     => $service_enable,
    hasstatus  => true,
    hasrestart => true,
  }

}
