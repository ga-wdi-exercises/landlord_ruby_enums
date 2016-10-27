require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]



# Use enumerables to -



  # Print all the addresses for the apartments
  def print_addresses(apartments)
    addresses = apartments.map { |apartment| aparment[:address]  }
    addresses.each { |address| puts address }
  end

  # Print all the names for tenants
  




  # Print only apartments that are less then 700 in rent
  # Print only tenants that are over the age of 44
  # Print only tenants that have an apartment id of 1
  # Print all the tenants in order from youngest to oldest
  # Print the names of all the tenants alphabetically

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants


print_addresses(apartments)
