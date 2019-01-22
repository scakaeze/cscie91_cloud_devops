class apache::packages ($ensure  = 'present',)
{
  package { 'httpd':
    ensure => $ensure,
    name   => 'httpd',
    notify => Class['Apache::Service'],
  }
}
