require "pry"
require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"

apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # There are 2 arrays with 2 types of hashes
  # What are the properties for each of the two types of hashes
  # 1.apartments have id, address, monthly_rent,square_feet
  # 2.tenants have id, name, age, apartment_id

# Use enumerables to -
  # Print all the addresses for the apartments
  addresses = apartments.map do |apartment|
        apartment[:address]
   end
   puts addresses

  # Print all the names for tenants
  names = tenants.map do |tenant|
      tenant[:name]
  end
  puts names

  # Print only apartments that are less then 700 in rent
  # Print only tenants that are over the age of 44
  # Print only tenants that have an apartment id of 1
  # Print all the tenants in order from youngest to oldest
  # Print the names of all the tenants alphabetically

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants
binding.pry

puts "end of the code!"
