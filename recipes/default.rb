Chef::Log.info("Chef Handlers will be at: #{node['chef_handler']['handler_path']}")

cookbook_file "#{node['chef_handler']['handler_path']}/campfire.rb" do
  source 'campfire.rb'
  action :nothing
end.run_action(:create)

include_recipe 'chef_handler'
