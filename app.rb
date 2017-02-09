require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes
  ## ANSWER
  # The below "data" is a method, wich contains two hashes .
  # The first hash is called "apartment" and the second one is called "tenants".
  # The "apartments" hash contains four properties: "id", "address", "monthly_rent", and "square_feet".
  # The "tenants" hash also contains four properties: "id", "name", "age", and "apartment_id".

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
    apartments.each do |apartment|
      below_700 = apartment[:monthly_rent] < 700
      puts below_700
      end

  # Print only tenants that are over the age of 44



  # Print only tenants that have an apartment id of 1
  # Print all the tenants in order from youngest to oldest
  # Print the names of all the tenants alphabetically

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants
