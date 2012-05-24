#
# Cookbook Name:: spawn_fcgi
# Recipe:: default
#
# Copyright 2012, NREL
#
# All rights reserved - Do Not Redistribute
#

include_recipe "fcgiwrap"
include_recipe "spawn_fcgi"

template "/etc/sysconfig/spawn-fcgi" do
  source "sysconfig.erb"
  mode "0644"
  notifies :enable, "service[spawn_fcgi]"
  notifies :restart, "service[spawn_fcgi]"
end
