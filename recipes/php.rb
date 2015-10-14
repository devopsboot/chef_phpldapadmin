#
# Cookbook Name:: phpldapadmin
# Recipe:: php
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

package node['phpldapadmin']['phppackages'] do
  action :install
  notifies :restart, 'service[apache2]', :delayed
end

template '/etc/httpd/mods-enabled/php.conf' do
  source 'php.conf.erb'
  owner 'root'
  group 'root'
  mode '0644'
  notifies :restart, 'service[apache2]', :delayed
end