require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
apartments = data[:apartments]
tenants = data[:tenants]
ruby_apartments = []
ruby_tenants = []



user_input.each do |tenant|
    if tenant.to_i.to_s
      user_input << tenant.to_i
    else
      user_input << apartments
    end

  end

   puts apartments + tenants
  # end




#step 3
ruby_apartments = apartmnets.map do |apartment|
  Apartment.new(apartment[:id], apartment[:address], apartment[:monthly_rent], apartment[:square_feet])
end

ruby_tenants = tenants.map do |tenant|
  Tenant.new(tenant[:id], tenant[:name], tenant[:age], tenant[:apartment_id])
end


# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
    # There are two classes name apartments and tenants
  # What are the properties for each of the two types of hashes
    # Hash apartments contains properties of address, monthly rent and square feet
    # Hash tenantas contains properties of name age and apartment ID
# Use enumerables to -
  # Print all the addresses for the apartments
    #apartments.each do |apartment|
    #  puts apartment.address
    # end
  # Print all the names for tenants
    # ruby_tenants.each do |tenant|
    #   puts tenant.name
    # end
  # Print only apartments that are less then 700 in rent
   #less_expensive_apartments = ruby_apartments.select do |apartment|
   #   apartment.monthly_rent < 700
   # end
  # Print only tenants that are over the age of 44
   # older_tenants = ruby_tenants.select do |tenant|
   #   apartment.age > 44
   # end
   # puts older_tenants
  # Print only tenants that have an apartment id of 1
   #apartment_one_tenants = ruby_tenants.select do |tenant|
   #   tenant.apartment_id == 1
   # end
   # puts apartment_one_tenants
  # Print all the tenants in order from youngest to oldest
   #age_ordered_tenants = ruby_tenants.sort_by do |tenant|
   #   tenant.age
   # end

  # Print the names of all the tenants alphabetically
   #name_ordered_tenants = ruby_tenants.sort_by do |a, b|
   #   a.name.downcase <=> b.name.downcase
   # end

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
   # all_tenants = tenants.map do |tenant|
   #   puts tenant[:id], tenant[:name], tenant[:age], tenant[:apartment_id]
   # end
  # When printing all apartments, under each apartment print all of its tenants
   # all_apartments = apartments.map do |apartment|
   #   puts apartment[:id], apartment[:address], apartment[:monthly_rent], apartment[:square_feet]
   # end
