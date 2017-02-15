require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
require_relative "helpers/ui"
apartments = data[:apartments]
tenants = data[:tenants]

ruby_apartments = apartments.map do |apartment|
  Apartment.new(apartment[:id], apartment[:address], apartment[:monthly_rent], apartment[:square_feet])
end

ruby_tenants = tenants.map do |tenant|
  Tenant.new(tenant[:id], tenant[:name], tenant[:age], tenant[:apartment_id])
end

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured:
  # What are the properties for each of the two types of hashes

  #--- It is structured in a method called data, which consists a hash with 2 value-pairs, apartments and tenants. Each one contains and array of hashes with the properties of id, name, apartment_id.

  # Use enumerables to -
    # Print all the addresses for the tenants
      # ruby_apartments.each do |apartment|
      #   puts apartment.address
      # end
    # Print all the names for tenants
      # ruby_tenants.each do |tenant|
      #   puts tenant.name
      # end
    # Print only apartments that are less then 700 in rent
      # cheaper_apartments = ruby_apartments.select do |apartment|
      #   apartment.monthly_rent < 700
      # end
      # puts cheaper_apartments
    # Print only tenants that are over the age of 44
      # older_tenants = ruby_tenants.select do |tenant|
      #   apartment.age > 44
      # end
      # puts older_tenants
    # Print only tenants that have an apartment id of 1
      # apartment_one_tenants = ruby_tenants.select do |tenant|
      #   tenant.apartment_id == 1
      # end
      # puts apartment_one_tenants
    # Print all the tenants in order from youngest to oldest
      # age_ordered_tenants = ruby_tenants.sort_by do |tenant|
      #   tenant.age
      # end
    # Print the names of all the tenants alphabetically
      # name_ordered_tenants = ruby_tenants.sort_by do |a, b|
      #   a.name.downcase <=> b.name.downcase
      # end

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants
