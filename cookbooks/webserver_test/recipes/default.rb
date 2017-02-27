#
# Cookbook:: webserver_test
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#
# Install the Apache package.
package 'httpd'

# start and enable the httpd service.
service 'httpd' do
	action [:enable, :start]
end

#server a custome home page.
file '/var/www/html/index.html' do
	content '<html>
	<body>
	  <h1>hello world</h1>
	</body>
</html>'
end
