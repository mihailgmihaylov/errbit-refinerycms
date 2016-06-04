
 # yumrepo { 'nginx_repo':
 #   enabled  => 1,
 #   descr    => 'Nginx official repo',
 #   baseurl  => 'http://nginx.org/packages/centos/7/$basearch/',
 #   gpgcheck => 0,
 # }

 $packages = [
             	"git",
                "ruby",
             	"ruby-devel",
		"rubygems",
             	"ImageMagick",
	     	"libxml2",
	     	"libxml2-devel",
		"libxslt-devel",
		"sqlite",
		"sqlite-devel",
	    ]
 
package  { $packages:
    ensure   => installed,
}

#package { 'nginx':
#     ensure  => "installed",
#     require => Yumrepo['nginx_repo']
#}

