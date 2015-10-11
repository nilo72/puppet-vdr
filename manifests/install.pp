class vdr::install inherits vdr {

  package { 'vdr':
    ensure => $package_ensure,
    name   => $package_name,
  }

}
