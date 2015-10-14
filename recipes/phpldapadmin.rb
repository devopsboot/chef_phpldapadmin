#
# Cookbook Name:: chef_phpldapadmin
# Recipe:: phpldapadmin
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

 
cookbook_file "#{Chef::Config[:file_cache_path]}/phpldapadmin.tar.gz" do
  source 'phpldapadmin.tar.gz'
  mode '0644'
  action :create
end

tar_extract "#{Chef::Config[:file_cache_path]}/phpldapadmin.tar.gz" do
  action :extract_local
  target_dir node['phpldapadmin']['dir']
  user node['phpldapadmin']['install']['user']
  group node['phpldapadmin']['install']['group']
  tar_flags [ '--strip-components 1' ]
  not_if { ::File.exists?("#{node['phpldapadmin']['dir']}/index.php") }
end