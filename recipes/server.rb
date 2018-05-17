#
# Cookbook:: apache-webserver
# Recipe:: server
#
# Copyright:: 2018, The Authors, All Rights Reserved.
package 'httpd' do
        action :install
end
file '/var/www/html/index.html'do
        content "
	create server through chef
	HOSTNAME: #{node['hostname']}
	IP-ADDRESS: #{node['ipaddress']}
"
end
service 'httpd' do
        action :start
end
