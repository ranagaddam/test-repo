#
# Cookbook:: apache
# Recipe:: default
#
#
# Copyright:: 2017, The Authors, All Rights Reserved
package 'apache' do
       package_name 'httpd'
    end

service 'httpd' do
       action [:enable, :start]
end

file '/var/www/index.html' do
      content 'Hello world!'
      mode '0755'
      owner 'root'
      group 'apache'
 end

file '/etc/motd' do
      content'Welcome to our server'
end

execute 'command-test' do
    command 'echo blah >>/etc/motd'
    only_if 'test -r /etc/motd'
end

execute 'command-test' do
    command 'echo blah >>/etc/motd'
    only_if 'test -r /etc/motd'
end
