
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
                "mysql",
                "mysql-devel",
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
    ensure   => installed,
}

