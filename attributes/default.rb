#campfire  = node['app_env_settings']['chef_handler']['campfire']
#stack     = node['intu_metadata']['stack']['name']
#ip        = node['ec2']['public_ipv4']
#message   = "Chef Exception! Stack: '#{stack}' , Public IP: '#{ip}'"
#subdomain = campfire['subdomain']
#token     = campfire['token']
#room_id   = campfire['room_id']

default['campfire_handler']['campfire']  = 
default['campfire_handler']['stack']     =
default['campfire_handler']['ip']        =
default['campfire_handler']['message']   =
default['campfire_handler']['subdomain'] =
default['campfire_handler']['token']     =
default['campfire_handler']['room_id']   =


