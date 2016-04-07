require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]


# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes

# Use enumerables to -
  # Print all the addresses for the apartments
  all_addresses = apartments.map do |n|
     n[:address]
  end
  puts all_addresses

  # Print all the names for tenants
  all_names = tenants.map do |n|
    n[:name]
  end
  puts all_names.inspect

  # # Print only apartments that are less then 700 in rent
  # cheap_apartments = apartments.each do |n|
  #   apartments.select {n[:monthly_rent] < 700}
  # end
  #  This one ^^^^^ doesn't work and I can't figure out why.

 cheap_apartments = apartments.select {|a| a[:monthly_rent] < 700 }
  puts cheap_apartments

  # Print only tenants that are over the age of 44
  # Print only tenants that have an apartment id of 1
  # Print all the tenants in order from youngest to oldest
  # Print the names of all the tenants alphabetically

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants
