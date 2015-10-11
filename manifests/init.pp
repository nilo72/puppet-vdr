class vdr(
      $config             = $vdr::params::config,
      $package_ensure     = $vdr::params::package_ensure,
      $package_name       = $vdr::params::package_name,
      $service_enable    = $ntp::params::service_enable,
      $service_ensure    = $ntp::params::service_ensure,
      $service_manage    = $ntp::params::service_manage,
      ) inherits vdr::params{

      class { '::vdr::install': } ~>
      class { '::vdr::config': } ~>
      class { '::vdr::service': }
}
