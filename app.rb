##################
# HW PART 3 #
###################

require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
apartments = data[:apartments]
tenants = data[:tenants]
ruby_apartments = []
ruby_tenants = []

apartments.each do |apartment|
  apartment_new = Apartment.new(apartment[:id], apartment[:address], apartment[:monthly_rent], apartment[:square_feet])
  ruby_apartments << apartment_new
end

tenants.each do |tenant|
  tenant_new = Tenant.new(tenant[:id], tenant[:name], tenant[:age], tenant[:apartment_id])
  ruby_tenants << tenant_new
end

#     # Print all the addresses for the apartments
ruby_apartments.each do |apartment|
  puts apartment.address
end
#     # Print all the names for tenants
ruby_tenants.each do |tenant|
  puts tenant.name
end
#     # Print only apartments that are less then 700 in rent
ruby_apartments.each do |apartment|
  if apartment.monthly_rent < 700
    puts apartment
  end
end
#     # Print only tenants that are over the age of 44
ruby_tenants.each do |tenant|
  if tenant.age > 44
    puts tenant
  end
end
#     # Print only tenants that have an apartment id of 1
ruby_tenants.each do |tenant|
  if tenant.apartment_id == 1
    puts tenant
  end
end
#     # Print all the tenants in order from youngest to oldest
ruby_tenants.sort_by! do |tenant|
  tenant.age
end
puts tenants
#     # Print the names of all the tenants alphabetically
tenants.sort_by! do |tenant|
  tenant.name
end
puts tenants


##################
# HW PART 2 #
###################



##################
# HW PART 1 COMMENTED OUT BELOW #
###################

# require_relative "data"
# apartments = data[:apartments]
# tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
    # Explain how the data is structured:
        #The data is structured in two seperate arrays. Both the apartments and tenants arrays contain hashes, each hash containing 4 properties.

    # What are the properties for each of the two types of hashes
        #For the hashes in the apartments array, the properties are: 'id', 'address', 'monthly_rent', and 'square_feet'
        #For the hashes in the tenants array, the properties are: 'id', 'name', 'age', and 'apartment id'

# Use enumerables to -
  #     # Print all the addresses for the apartments
  # apartments.each do |apartment|
  #   puts apartment[:address]
  # end
  #     # Print all the names for tenants
  # tenants.each do |tenant|
  #   puts tenant[:name]
  # end
  #     # Print only apartments that are less then 700 in rent
  # apartments.each do |apartment|
  #   if apartment[:monthly_rent] < 700
  #     puts apartment
  #   end
  # end
  #     # Print only tenants that are over the age of 44
  # tenants.each do |tenant|
  #   if tenant[:age] > 44
  #     puts tenant
  #   end
  # end
  #     # Print only tenants that have an apartment id of 1
  # tenants.each do |tenant|
  #   if tenant[:apartment_id] == 1
  #     puts tenant
  #   end
  # end
  #     # Print all the tenants in order from youngest to oldest
  # tenants.sort_by! do |tenant|
  #   tenant[:age]
  # end
  #
  # puts tenants
  #     # Print the names of all the tenants alphabetically
  # tenants.sort_by! do |tenant|
  #   tenant[:name]
  # end
  # puts tenants

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants
