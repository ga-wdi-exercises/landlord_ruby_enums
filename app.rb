require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  ## The data is structured in apartments to a specific address, monthly_rent, and square_feet so in all the specifics of the actual apartment and the tenants describe their name, age, and apartment_id which are more specific to them.
  ## In short apartments describes the apartment's properties and tenants describe the tenant's properties
  # What are the properties for each of the two types of hashes
  ## apartment: address, monthly_rent, square_feet
  ## tenants: name, age, apartment_id

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
