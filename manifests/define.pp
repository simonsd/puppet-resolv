class resolv {
	define file ( $domain, $search, $nameserver ) {
		file { "resolv.conf":
			ensure => present,
			path => "/etc/resolv.conf",
			owner => root,
			group => root,
			mode => 0644,
			content => template('resolv/resolv.conf.erb'),
		}
	}
}
