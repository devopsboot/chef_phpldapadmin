name             'phpldapadmin'
maintainer       'Nclouds, Inc'
maintainer_email 'info@nclouds.com'
license          'All rights reserved'
description      'Installs/Configures phpldapadmin'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'



depends 'apache2', '~> 3.1.0'
depends 'tar', '~> 0.7.0'


supports 'amazon' '>= 2015.09'