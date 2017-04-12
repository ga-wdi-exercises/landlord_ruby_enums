require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
    # The data is structured in a method which returns two keys: apartments & tenants
  # What are the properties for each of the two types of hashes
    # apartments: id, address, monthly_rent, square_feet
    # tenants: id, name, age, apartment_id

# Use enumerables to -
  # Print all the addresses for the apartments
    data[:apartments].each do |apartment|
      puts apartment[:address]
    end
  # Print all the names for tenants
    data[:tenants].each do |tenant|
      puts tenant[:name]
    end
  # Print only apartments that are less then 700 in rent
  cheap_apartments = data[:apartments].select do |apartment|
    apartment[:monthly_rent] < 700
  end
  puts cheap_apartments
  # Print only tenants that are over the age of 44
  # Print only tenants that have an apartment id of 1
  # Print all the tenants in order from youngest to oldest
  # Print the names of all the tenants alphabetically

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants
