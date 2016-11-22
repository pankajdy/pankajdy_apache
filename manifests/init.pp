class apache (
  $package_name = $::apache::params::package_name,
  $service_name = $::apache::params::service_name,
  $webpage_name = $::apache::params::webpage_text,
) inherits apache::params {

  # == Class:   #
  class { '::apache::install':} ->
  class { '::apache::config': } ~>
  class { '::apache::service':} ->
  Class['::apache']
    # resources
}
