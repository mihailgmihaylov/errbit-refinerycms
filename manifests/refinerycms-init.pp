$packages = [
  'git',
  'ruby',
  'ruby-devel',
  'rubygems',
  'ImageMagick',
  'libxml2',
  'libxml2-devel',
  'libxslt-devel',
  'sqlite',
  'sqlite-devel',
  'mariadb',
  'mariadb-devel',
  'postgresql',
  'postgresql-devel'
]

package  { $packages:
  ensure => present,
}

package  { 'epel-release':
  ensure => present,
}

package  { 'nodejs':
  ensure  => present,
  require => Package['epel-release'],
}
