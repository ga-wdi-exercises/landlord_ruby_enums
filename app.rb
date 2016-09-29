require 'pry'

require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
apartments = data[:apartments]
tenants = data[:tenants]
ruby_apartments = []
ruby_tenants = []

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
#============================================================================================
  # Explain how the data is structured
  # Data is defined with two different arrays and with in them tow hashes,one in each.
#--------------------------------------------------------------------------------------------
  # What are the properties for each of the two types of hashes
  # apartments = id, address, monthly_rent, square_feet.
  # tenants = id, name, age, apartment_id.
#============================================================================================

  # Print all the addresses for the apartments
  apartments.each do |apartment|
    puts apartment.address
  end
  # Print all the names for tenants
  tenants.each do |tenant|
    puts tenant.name
  end
  # Print only apartments that are less then 700 in rent
  apartments.each do |apartment|
    puts (apartment.monthly_rent < 700) ? apartment.address : ""
  end
  # Print only tenants that are over the age of 44
  tenants.each do |tenant|
    puts (tenant.age > 44) ? tenant.name : ""
  end
  # Print only tenants that have an apartment id of 1
  tenants.each do |tenant|
    puts (tenant.apartment_id == 1) ? tenant.name : ""
  end
  # Print all the tenants in order from youngest to oldest
  tenants.sort_by do |tenant| tenant.age
  end
  # Print the names of all the tenants alphabetically
  tenants.sort_by do  |tenant| tenant.name
  end
  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  tenants.each do |tenant|
  apartments.each do |apartment|
    puts tenant.name
    if tenant.apartment_id == apartment.id
    puts apartment.address
    end
    end
  end
  # When printing all apartments, under each apartment print all of its tenants
  apartments.each do |apartment|
    puts apartment.address
    tenants.each do |tenant|
    if tenant.apartment_id == apartment.id
    puts tenant.name
    end
    end
  end



binding.pry
puts "The End"
