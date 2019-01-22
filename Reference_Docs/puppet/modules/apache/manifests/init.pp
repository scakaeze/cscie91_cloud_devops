class apache ($ensure  = 'present',)

{
	class {'apache::packages':
		ensure => 'present',
	}
	include apache::config
	include apache::service 
        
	#class {'apache::config':
	#	server => $webserver,
	#}
}

