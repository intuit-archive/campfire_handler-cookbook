include_recipe 'chef_handler'

campfire  = node['campfire_handler']['campfire']  
stack     = node['campfire_handler']['stack']     
ip        = node['campfire_handler']['ip']        
message   = node['campfire_handler']['message']   
subdomain = node['campfire_handler']['subdomain'] 
token     = node['campfire_handler']['token']     
room_id   = node['campfire_handler']['room_id']   

Chef::Log.info("Kevin - campfire #{campfire}")
Chef::Log.info("Kevin - stack #{stack}")
Chef::Log.info("Kevin - ip #{ip}")
Chef::Log.info("Kevin - message #{message}")
Chef::Log.info("Kevin - subdomain #{subdomain}")
Chef::Log.info("Kevin - token #{token}")
Chef::Log.info("Kevin - room_id #{room_id}")

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
