require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:

  # Explain how the data is structured
    #the data is structured into two arrays.  one array for apartments, and one array for tenants.
    #each array is then comprised of many hashes.


  # What are the properties for each of the two types of hashes
    #properties for the apartment hashes:
      #id, address, monthly rent, square feet
    #properties for the tenant hashes:
      #id, name, age, apartment id

# Use enumerables to -
  # Print all the addresses for the apartments
  # Print all the names for tenants
  # Print only apartments that are less then 700 in rent
  # Print only tenants that are over the age of 44
  # Print only tenants that have an apartment id of 1
  # Print all the tenants in order from youngest to oldest
  # Print the names of all the tenants alphabetically

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants
