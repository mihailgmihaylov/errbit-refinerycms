
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
                "mariadb",
                "mariadb-devel",
                "postgresql",
                "postgresql-devel"
	    ]
 
package  { $packages:
    ensure   => installed,
}

package  { 'epel-release':
    ensure   => installed,
}

package  { 'nodejs':
    require => Package['epel-release'],
    ensure   => installed,
}

