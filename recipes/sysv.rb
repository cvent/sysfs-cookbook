#
# Cookbook Name:: sysfs
# Recipe:: sysv
# Author:: Jonathan Morley <jmorley@cvent.com>
#
# Copyright 2015, Cvent, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

cookbook_file '/etc/sysfs.conf' do
  source 'sysfs.conf'
  owner 'root'
  group 'root'
  mode '0644'
  action :create
end

cookbook_file '/etc/init.d/sysfsutils' do
  source 'sysfsutils'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

directory "/etc/sysfs.d" do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end