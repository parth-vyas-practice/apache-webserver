#
# Cookbook:: apache-webserver
# Recipe:: remove-server
#
# Copyright:: 2018, The Authors, All Rights Reserved.
service 'httpd'do
        action :stop
end
package 'httpd'do
        action :remove
end
file '/var/www/html/index.html' do
	action :delete
end

