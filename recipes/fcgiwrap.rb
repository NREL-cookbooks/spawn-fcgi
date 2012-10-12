#
# Cookbook Name:: spawn-fcgi
# Recipe:: default
#
# Copyright 2012, NREL
#
# All rights reserved - Do Not Redistribute
#

include_recipe "fcgiwrap"

template "/etc/sysconfig/spawn-fcgi" do
  source "sysconfig_fcgiwrap.erb"
  mode "0644"
  notifies :restart, "service[spawn-fcgi]"
end

include_recipe "spawn-fcgi"
