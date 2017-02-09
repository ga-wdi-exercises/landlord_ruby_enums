require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
    # We have two arrays, one for apartments and one for tenants. There are hashes within the arrays that provide additional detail.
  # What are the properties for each of the two types of hashes
    # Apartments has: id, address, monthly_rent, and square_feet. Tenants has: id, name, age, apartment_id.

# Use enumerables to -
  # Print all the addresses for the apartments
  apartments.each {|apt| p apt[:address]}
  # Print all the names for tenants
  tenants.each {|ten| p ten[:name]}
  # Print only apartments that are less then 700 in rent
  apartments.select do |a|
    if a[:square_feet] < 700
      p a
    end
  end
  # Print only tenants that are over the age of 44
  tenants.select do |a|
    if a[:age] > 44
      p a
    end
  end
  # Print only tenants that have an apartment id of 1
  tenants.select do |a|
    if a[:id] == 1
      p a
    end
  end
  # Print all the tenants in order from youngest to oldest
  puts tenants.sort {|a, b| a[:age] <=> b[:age]}
  # Print the names of all the tenants alphabetically
  puts tenants.sort {|a, b| a[:name] <=> b[:name]}
  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants
