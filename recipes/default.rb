#
# Cookbook Name:: chef_phpldapadmin
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

include_recipe 'phpldapadmin::webserver'
include_recipe 'phpldapadmin::php'
include_recipe 'phpldapadmin::phpldapadmin'
include_recipe 'phpldapadmin::openldap'