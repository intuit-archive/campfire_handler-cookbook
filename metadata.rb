name             "campfire_handler"
maintainer       "Intuit, Inc."
maintainer_email "kevin_young@intuit.com"
license          "Apache 2.0"
description      "Handler for campfire to be used in conjunction with chef_handler"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1.0"

%w{ chef_handler }.each do |cb|
    depends cb
end
