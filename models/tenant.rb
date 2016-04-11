ruby_tenants = []
tenants = data[:tenants]
tenants.each do |tenant|
  puts tenant

class Tenant
  def initialize( address, rent, age, apartment_id)
    @name = address
    @id= rent
    @age = age
    @apartment_id = apartment_id

  end




# require_relative "data"
# require_relative "models/apartment"
# require_relative "models/tenant"
