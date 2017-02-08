require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured

    #the information is stored in two arrays consisting of hashes.

  # What are the properties for each of the two types of hashes

    # the first hash, properties, includes an id (presumably assigned as array.length +1), an address, monthly rent, and square footage. The second hash, tenants, includes an id, the name, the age, and the id of the apartment they occupy.

# Use enumerables to -
  # Print all the addresses for the apartments
p apartments.map{|x| x[:address]}
  # Print all the names for tenants
p tenants.map{|x| x[:name]}
  # Print only apartments that are less then 700 in rent
p apartments.select{ |apartment| apartment[:monthly_rent] < 700 }
  # Print only tenants that are over the age of 44
p tenants.select{ |tenant| tenant[:age] > 44 }
  # Print only tenants that have an apartment id of 1
p tenants.select{ |tenant| tenant[:apartment_id] == 1}
  # Print all the tenants in sorder from youngest to oldest
p tenants.sort_by { |tenant| tenant[:age] }
  # Print the names of all the tenants alphabetically
p tenants.sort_by { |tenant| tenant[:name]}

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants
