
require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  There is a data method that has two arrays called "apartments" and "tenants".
  Inside these arrays there are two hashes and these hashes have keys and keys also have values.


  # What are the properties for each of the two types of hashes
   Apartments have "id", "address", "monthly_rent" and "square_feet" properties.

   Tenants have "id", "name", "age", and "apartment_id" properties.

# Use enumerables to -
  # Print all the addresses for the apartments
  apartments.each do |apartment|
        puts apartment[:address]
      end

  # Print all the names for tenants
  tenants.each do |name|
        puts name[:name]
      end

  # Print only apartments that are less then 700 in rent
  apartments.select do |apartment|
    apartment[:monthly_rent] < 700
    end

  # Print only tenants that are over the age of 44
  tenants.select do |tenant|
    tenant[:age] > 44
    do

  # Print only tenants that have an apartment id of 1

  tenants.select do |tenant|
    tenant[:apartment_id] == 1
   end


  # Print all the tenants in order from youngest to oldest
  tenants.sort_by do |tenant|
    tenant[:age]
   end


  # Print the names of all the tenants alphabetically
  # tenants.sort_by do |tenant|
  #   tenant[:name]
  #  end

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  tenants.each do |tenant|
    puts tenant[:name]

    tenants_apartment = apartments.select do |apartment|
      apartment[:id] == tenant[:apartment_id]
      tenants_apartment[:address]
    end
  end


  # When printing all apartments, under each apartment print all of its tenants
