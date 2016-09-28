require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"

apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
    # Data're structured as two arrays of objects, one for tenants, and one for apartments.
    # it's also neat that it's within a method.
  # What are the properties for each of the two types of hashes
    # apartments: id, address, monthly_rent, square_feet
    # tenants: id, name, age, apartment_id

# Use enumerables to -
  # Print all the addresses for the apartments
    # apartments.each do |apt|
    #   p apt[:address]
    # end
  # Print all the names for tenants
    # tenants.each do |t|
    #   p t[:name]
    # end
  # Print only apartments that are less then 700 in rent
    # cheap = apartments.select do |apt|
    #   apt[:monthly_rent] < 700
    # end
    # puts cheap
  # Print only tenants that are over the age of 44
    # tenants.each do |t|
    #   if t[:age] > 44
    #     p t[:name]
    #   end
    # end
  # Print only tenants that have an apartment id of 1
    # apt_one = tenants.select do |t|
    #   t[:apartment_id] == 1
    # end
    # puts apt_one
  # Print all the tenants in order from youngest to oldest
    # this one was a bit harder. Ruby docs can be tough to read sometimes!!!!
    # sorted_tenants = tenants.sort do |t1, t2|
    #   t1[:age] <=> t2[:age]
    # end
    # puts sorted_tenants
  # Print the names of all the tenants alphabetically
    # sorted_tenants = tenants.sort do |t1, t2|
    #   t1[:name] <=> t2[:name]
    # end
    # sorted_tenants.each do |t|
    #   p t[:name]
    # end

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants
