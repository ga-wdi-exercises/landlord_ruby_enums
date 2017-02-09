require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes

# Use enumerables to -
  # Print all the addresses for the apartments
  apartments.each do |apartment|
    puts apartment[:address]
  end

  # Print all the names for tenants
  tenants.each do |tenant|
    puts tenant[:name]
  end

  # Print only apartments that are less then 700 in rent
  arr = apartments.select {|apartment| apartment[:monthly_rent]< 700}
  puts arr
  # Print only tenants that are over the age of 44
  arr = tenants.select {|tenant| tenant[:age]> 44}
  puts arr
  # Print only tenants that have an apartment id of 1
  arr = tenants.select {|tenant| tenant[:id] == 1}
  puts arr
  # Print all the tenants in order from youngest to oldest
  puts tenants.sort_by {|tenant| tenant[:age]}
  # Print the names of all the tenants alphabetically
  puts tenants.sort_by {|tenant| tenant[:name]}
  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants
