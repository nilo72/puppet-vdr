class vdr::params {
  case $::osfamily {
    'Debian', 'debian': {
      $config                 = '/etc/vdr/setup.conf'
      $package_ensure         = latest
      $package_name           = 'vdr'
      $vdr_dir                = '/etc/vdr'
      $vdr_known_hosts        = '/etc/vdr/vdr_known_hosts'
      $service_name           = 'vdr'
      $service_enable         = 'true'
      $service_ensure         = running
      $service_manage         = 'true'
    }
  }
}
