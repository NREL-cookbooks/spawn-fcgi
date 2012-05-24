#
# Cookbook Name:: spawn_fcgi
# Recipe:: default
#
# Copyright 2012, NREL
#
# All rights reserved - Do Not Redistribute
#

include_recipe "yum::epel"

package "spawn-fcgi"

service "spawn_fcgi" do
  service_name "spawn-fcgi"
  supports :status => true
end
