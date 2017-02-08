require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
    # There is a global method called `data`. This defines an apartments array and a tenants array, and it returns the hash, {apartments:apartments, tenants:tenants}. Each array's elements are hashes.
  # What are the properties for each of the two types of hashes
    # The apartment hashes have :id, :address, :monthly_rent, and :square_feet keys (properties). The tenant hashes have :id, :name, :age, and :apartment_id keys (properties).

# Use enumerables to -
  # Print all the addresses for the apartments
  addresses = apartments.map{|apartment| apartment[:address]}
  puts addresses
  # Print all the names for tenants
  names = tenants.map{|tenant| tenant[:name]}
  puts names
  # Print only apartments that are less then 700 in rent
  cheaper = apartments.select{|apartment| apartment[:monthly_rent] < 700}
  puts cheaper
  # Print only tenants that are over the age of 44
  older = tenants.select{|tenant| tenant[:age] > 44}
  puts older
  # Print only tenants that have an apartment id of 1
  id_1 = tenants.select{|tenant| tenant[:id] == 1}
  puts id_1
  # Print all the tenants in order from youngest to oldest
  tenants_by_age = tenants.sort_by{|tenant| tenant[:age]}
  puts tenants_by_age
  # Print the names of all the tenants alphabetically
  tenants_by_name = tenants.sort_by{|tenant| tenant[:name]}
  puts tenants_by_name

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants
