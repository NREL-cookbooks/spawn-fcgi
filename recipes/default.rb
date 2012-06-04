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

user node[:spawn_fcgi][:user] do
  system true
  shell "/bin/false"
  home "/var/www"
  # Don't alter existing users (so pre-existing "vagrant" user can be used).
  not_if { Etc.getpwnam(node[:spawn_fcgi][:user]) rescue false }
end

service "spawn_fcgi" do
  service_name "spawn-fcgi"
  supports :status => true
end
