#
# Cookbook Name:: chef_phpldapadmin
# Recipe:: webserver
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

#include_recipe "php"
include_recipe "apache2"
#include_recipe "apache2::mod_php5"


directory node['phpldapadmin']['dir'] do
  action :create
  recursive true
  owner node['phpldapadmin']['install']['user']
  group node['phpldapadmin']['install']['group']
  mode  '0755'
end

web_app "phpldapadmin" do
    template "phpldapadmin.conf.erb"
    docroot node['phpldapadmin']['dir']
    server_name node['phpldapadmin']['server_name']
    server_aliases node['phpldapadmin']['server_aliases']
    server_port node['phpldapadmin']['server_port']
    enable true
end