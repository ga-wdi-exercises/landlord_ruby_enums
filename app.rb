require "pry"
require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes

# Use enumerables to -
  # Print all the addresses for the apartments DONE
  # Print all the names for tenants DONE
  # Print only apartments that are less then 700 in rent
  # Print only tenants that are over the age of 44
  # Print only tenants that have an apartment id of 1
  # Print all the tenants in order from youngest to oldest
  # Print the names of all the tenants alphabetically

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants

addresses = []
dwellers = []
lessThan = []

apartments.each{|apartment| puts apartment[:address]}
apartments.each{|apartment| addresses << apartment[:address]} # array

tenants.each{|tenant| puts tenant[:name]}
tenants.each{|tenant| dwellers << tenant[:name]} # array


apartments.each{|apartment| puts apartment[:monthly_rent] < 700}
apartments.find_all{|rent| lessThan << rent[:monthly_rent] < 700} # array





# apartments[:address].find_all {|address| }



binding.pry
