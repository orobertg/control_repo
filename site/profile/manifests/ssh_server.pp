class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDCXnFvwxnRML63DuDQk8asx/t2yqeGU3aP6Rcznyl1GXNq6RwilgPob2WsYRVDFvFCiRTEk2esowoBZNrg4mxPWzBZElviDp7a0TeP0QbnD7Vvb1wCKy8UgR1QZ9rtBqe0YuqXBusCpulkTBozfL2CrZjRWfJVi4NKEMrWlQdpPcF3Zf4Gupb2zW5W537AaKxeBGj1PvhOb6l1lphM2ON/37iq1Nd6azGMFnWb+c+Dvf73q+Y87MutGA2F5LBJRmFvQsDvOqVxYbENtGoowFGiOHSJXE0s+uMRe8X5GNuDJvT29Sfhjp1F3tsL2AAm4y0Go/lSoLu8pNQYrtwqeG75',
	}  
}
