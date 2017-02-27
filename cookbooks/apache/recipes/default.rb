#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#

if node['platform_family'] == "rhel"
	package = "httpd"
elsif node['platform_family'] == "debian"
	package = "apache2"
end


package 'apache2' do
	package_name package
	action :install
end 

service 'httpd' do
  	action [:enable, :start]
end

%w{httpd vim tree emacs}.each do |pkg|
	package pkg do  
        action :upgrade
	end 
end
    




# include_recipe 'apache::websites'
