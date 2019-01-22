# Class: apache::config
#
class apache::config ()
{

        file { '/var/www/html/index.html':
                path    => '/var/www/html/index.html',
                require => File['/var/www/html/'],
                source  => "puppet:///modules/apache/index.html",
        }
}

