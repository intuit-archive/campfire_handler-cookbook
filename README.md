# campfire_handler-cookbook cookbook

Installs chef_handler, and installs and configures campfire_handler

# Requirements

* Chef 10.x

## Platform
* CentOS 6.x
* RHEL 6.x

# Usage

Put the recipe `campfire_handler-cookbook` as early in the run list as possible

# Attributes
## Default

`node['campfire_handler']['token']`      - The token for campfire 

`node['campfire_handler']['room_id']`    - Campfire room to post to

`node['campfire_handler']['message']`    - Message that will be posted

`node['campfire_handler']['subdomain']`  - Campfire subdomain

# Recipes
## default
Copies in the campfire handler file into handler directory, sets up the handler

# Authors
Author:: Intuit, Inc. (<kevin_young@intuit.com>)
