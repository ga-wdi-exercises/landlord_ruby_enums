require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
    # Explain how the data is structured:
        #The data is structured in two seperate arrays. Both the apartments and tenants arrays contain hashes, each hash containing 4 properties.

    # What are the properties for each of the two types of hashes
        #For the hashes in the apartments array, the properties are: 'id', 'address', 'monthly_rent', and 'square_feet'
        #For the hashes in the tenants array, the properties are: 'id', 'name', 'age', and 'apartment id'

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
    if apartment[:monthly_rent] < 700
      puts apartment
    end
  end
  # Print only tenants that are over the age of 44
  # Print only tenants that have an apartment id of 1
  # Print all the tenants in order from youngest to oldest
  # Print the names of all the tenants alphabetically

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants
