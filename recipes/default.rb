Chef::Log.info("Chef Handlers will be at: #{node['chef_handler']['handler_path']}")

remote_directory node['chef_handler']['handler_path'] do
  source 'handlers'
  action :nothing
end.run_action(:create)
