# override['apache']['version'] = '2.2'
# override['apache']['package']     = 'httpd'
# override['apache']['devel_package'] = 'httpd-devel'

default['phpldapadmin']['server_port'] = '80'

default['phpldapadmin']['server_name'] = node['fqdn']
default['phpldapadmin']['server_aliases'] = [node['fqdn']]

default['phpldapadmin']['parent_dir'] = '/var/www'
default['phpldapadmin']['dir'] = "#{node['phpldapadmin']['parent_dir']}/phpldapadmin"

default['phpldapadmin']['url'] = "http://downloads.sourceforge.net/project/phpldapadmin/phpldapadmin-php5/1.2.3/phpldapadmin-1.2.3.tgz"


case node['platform']
when 'redhat', 'centos', 'scientific', 'fedora', 'amazon', 'oracle'
	default['phpldapadmin']['install']['user'] = 'apache'
	default['phpldapadmin']['install']['group'] = 'apache'
when 'debian', 'ubuntu'
	default['phpldapadmin']['install']['user'] = 'www-data'
	default['phpldapadmin']['install']['group'] = 'www-data'
end

default['phpldapadmin']['phppackages'] = ["php55", "php55-devel", "php55-common", "php55-cli", "php55-pecl-apc", "php55-pdo", "php55-xml", "php55-gd", "php55-mbstring", "php-pear", "php55-mysqlnd", "php55-mcrypt", "php55-ldap"]
default['phpldapadmin']['openldappackages'] = ["openldap-clients"]