# Configure strongswan

class strongswan::config inherits strongswan {

  include strongswan::config::ipsec
  include strongswan::config::secrets

}
