#
# Cookbook:: nexus_repository_manager
# Recipe:: download
#
# Copyright:: Copyright (c) 2017-present Sonatype, Inc. Apache License, Version 2.0.

user 'nexapp1q' do
  uid '30324'
  comment 'Nexus Repository Manager user'
  system true
  shell '/bin/false'
  home node['nexus_repository_manager']['nexus_home']['path']
  action :create
end

group 'nexapp1q' do
  members 'nexapp1q'
  action :create
end
