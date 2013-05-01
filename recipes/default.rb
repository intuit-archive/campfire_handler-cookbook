include_recipe 'chef_handler'

campfire  = node['app_env_settings']['chef_handler']['campfire']
stack     = node['intu_metadata']['stack']['name']
ip        = node['ec2']['public_ipv4']
message   = "Chef Exception! Stack: '#{stack}' , Public IP: '#{ip}'"
subdomain = campfire['subdomain']
token     = campfire['token']
room_id   = campfire['room_id']

chef_handler "Chef::Handler::Campfire" do
  source "/var/chef/handlers/campfire"
  arguments [ subdomain, token, room_id, message ]
  action :nothing
  supports :report => false, :exception => true
end.run_action(:enable)
