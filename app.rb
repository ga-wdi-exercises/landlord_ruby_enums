require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # The data is stored in a hash. The arrays called "apartments" and "tenants"
  # are what store the individual hashes
  # When the methods are called they return the respective values

  # What are the properties for each of the two types of hashes

# Use enumerables to -
  # Print all the addresses for the apartments
  # apartments.each do |apartment|
  #   puts apartment[:address]
  # end

  # Print all the names for tenants
  # tenants.each do |tenant|
  #   puts tenant[:name]
  # end

  # Print only apartments that are less then 700 in rent
  # apartments.select do |cost|
  #   puts apartment[:monthly_rent] < 700
  # end

  # Print only tenants that are over the age of 44
  # tenants.select do |years|
  #   puts years[:age] > 44
  # end

  # Print only tenants that have an apartment id of 1
  # tenants.select do |ids|
  #   puts tenants[:id] == 1
  # end

  # Print all the tenants in order from youngest to oldest
  # tenants.sort_by do |young_to_old|
  #   puts young_to_old[:age]
  # end

  # Print the names of all the tenants alphabetically
  # tenants.sort_by do |alphabetical|
  #   puts alphabetical[:name]
  # end

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants
