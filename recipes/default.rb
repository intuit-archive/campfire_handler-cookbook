include_recipe 'chef_handler'

campfire  = node['campfire_handler']['campfire']
stack     = node['campfire_handler']['stack']
ip        = node['campfire_handler']['ip']
message   = "Chef Exception! Stack: '#{stack}' , Public IP: '#{ip}'"
token     = node['campfire_handler']['campfire']['token']
room_id   = node['campfire_handler']['campfire']['room_id']
subdomain = node['campfire_handler']['campfire']['subdomain']

cookbook_file "#{node['chef_handler']['handler_path']}/campfire.rb" do
  source 'campfire.rb'
  action :nothing
end.run_action(:create)

chef_handler "Chef::Handler::Campfire" do
  source "/var/chef/handlers/campfire"
  arguments [ subdomain, token, room_id, message ]
  action :nothing
  supports :report => false, :exception => true
end.run_action(:enable)
