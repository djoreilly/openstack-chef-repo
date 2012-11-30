current_dir = File.dirname(__FILE__)

load "#{current_dir}/../config.rb"

log_level                :info
log_location             STDOUT
node_name                ENV['USER']
client_key               "#{current_dir}/../#{ENV['USER']}.pem"
validation_client_name   "#{ChefConfig::chef_organization}-validator"
#validation_client_name   ""

validation_key           "#{current_dir}/../#{ChefConfig::chef_organization}-validator.pem"
chef_server_url          ChefConfig::chef_url
cache_type               'BasicFile'
cache_options( :path =>  "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
knife[:environment] ||=  "production"
