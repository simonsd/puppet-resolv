node resolv {
	include resolv

	resolv::file { "resolv-foobar":
		domain => "foo.bar.be",
		search => "foo.bar.be",
		nameserver => "192.168.1.1",
	}
}
