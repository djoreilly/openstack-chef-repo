class ChefConfig
	class << self
		attr_accessor :chef_organization, :chef_url, :number_of_compute_nodes
	end

	# Setup steps with hosted chef:
	# 1. Change 'chef_organization' to your organization
	# 2. put your "<orgname>-validator.pem" inside this directory
	#
	# Setup steps with own chef server:
	# 1. Change chef server URL
	# 2. Create a chef client with <somename>-validator
	# 3. Put <somename>-validator.pem in this directory
	# 4. change "chef_organization" to <somename>
	self.chef_organization = "hv"
	self.chef_url = "https://api.opscode.com/organizations/#{chef_organization}"

	# Change to the number of compute nodes you would like to have
	self.number_of_compute_nodes = 1

end
