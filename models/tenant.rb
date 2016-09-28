# Tenant class
class Tenant

	attr_accessor :tenant
	@@all = []

	def initialize tenant
		@tenant = tenant
		@@all << tenant
	end

	def self.all
		@@all
	end

end
