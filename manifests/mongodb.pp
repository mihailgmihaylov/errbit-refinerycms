#include '::mongodb::server'


class { '::mongodb::globals':
	manage_package_repo => 'true',
}

class {'::mongodb::server':
	port => 27019,
	verbose => true
	}

class {'::mongodb::client':}

mongodb_user { mongoadmin:
  username      => 'mongodb',
  ensure        => present,
  password_hash =>  mongodb_password('mongoadmin', 'Q1w2e3r4t5y6'),
  database      => 'admin',
  roles         => [ 'readWrite', 'userAdmin', 'dbOwner', 'dbAdmin','userAdminAnyDatabase', 'dbAdmin'],
  tries         => 10,
  require       => Class['mongodb::server'],
}


