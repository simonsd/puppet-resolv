class resolv {
	define file ( $domain, $search, $nameserver ) {
		file { "/etc/resolv.conf":
			ensure => present,
			owner => root,
			group => root,
			mode => 0644,
			content => template('resolv.conf.erb'),
		}
	}
}
