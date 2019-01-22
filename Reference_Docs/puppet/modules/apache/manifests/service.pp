# Class: apache::service
#
class apache::service ()
{
  # The base class must be included first because parameter defaults depend on it

  service { 'httpd':
    ensure => 'running',
    enable => true, 
  }
}
