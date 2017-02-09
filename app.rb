require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes

# Use enumerables to -
  # Print all the addresses for the apartments
  # apartments.each do |apartment|
  #   puts apartment[:address]
  # end
  # # Print all the names for tenants
  # tenants.each do |tendent|
  #   puts tendent[:name]
  # end
  # # Print only apartments that are less then 700 in rent
  # cheap_apartment = apartments.select do |apartment|
  #   apartment[:monthy_rent] < 700
  # end
  # # Print only tenants that are over the age of 44
  # over_44_tenants = tenants.select do |tentant|
  #   apartment[:age] > 44
  # end
  # # Print only tenants that have an apartment id of 1
  # one_apartment_tenant = tenants.select do |tentant|
  #   tentant[:apartment_id] == 1
  # end
  # # Print all the tenants in order from youngest to oldest
  # youngest_to_oldest_tenant = tenants.sort_by do |tentant|
  #   tentant[:age]
  # end
  # # Print the names of all the tenants alphabetically
  # alphabetically_order_tenant = tenants.sort_by do |a, b|
  #   a[:name].downcase <=> b[:name]downcase
  # end

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants
