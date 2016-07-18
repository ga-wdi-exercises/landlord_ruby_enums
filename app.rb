require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  #The return value for data is a hash. The first key is associated with the first array. The second key
  #is associated with the second. Thus the return value essentially makes data(which was two arrays consisting of hashes) into a hash with two keys.
  #So our data is a hash with two keys. Each key is an array of hashes.

  # What are the properties for each of the two types of hashes
  #ID, address, monthly_rent, square_feet
  #ID,name,age,apartment_id

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
