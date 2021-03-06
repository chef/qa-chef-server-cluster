#
# Cookbook Name:: build
# Recipe:: smoke_general_prep
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

include_recipe 'build::prepare_deps'
include_recipe 'build::prepare_acceptance'

# and then write it back to disk where qa-chef-server-cluster expects it
directory File.join(node['delivery']['workspace']['repo'], '.chef', 'nodes') do
  action :create
end
