
  yumrepo { 'nginx_repo':
    enabled  => 1,
    descr    => 'Nginx official repo',
    baseurl  => 'http://nginx.org/packages/centos/7/$basearch/',
    gpgcheck => 0,
  }

  yumrepo { 'mongodb_repo':
    enabled  => 1,
    descr    => 'Mongodb official repo',
    baseurl  => 'http://repo.mongodb.org/yum/redhat/7/mongodb-org/3.2/x86_64/',
    gpgcheck => 0,
  }


 $packages = [
             	"git",
	     	"libxml2",
	     	"libxml2-devel",
		"libxslt-devel",
	    ]
 
package  { $packages:
    ensure   => installed,
}

package { 'nginx':
     ensure  => "installed",
     require => Yumrepo['nginx_repo']
}


