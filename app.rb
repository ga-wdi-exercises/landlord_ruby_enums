require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
    #Data is systematically structured with two primary categories. These categories are given a unique id that allows for uniformed access.
    # Within these primarty catergories are subcategories that can serve as unique identifiers for even more precise data access.

  # What are the properties for each of the two types of hashes
    # The propreties for the apartments hash type are: ID, address, monthly_rent, and square_feet. Properties for the tenants has type are:
    # name, age, and apartment_id.

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
