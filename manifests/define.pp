define nameserver (
	$domain = "",
	$search = "",
	$nameserver = "192.168.1.1"
) {
	file { "resolv.conf":
		ensure => present,
		path => "/etc/resolv.conf",
		owner => root,
		group => root,
		mode => 0644,
		content => template('resolv/resolv.conf.erb'),
	}
}
