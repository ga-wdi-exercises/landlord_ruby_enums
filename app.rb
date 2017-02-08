require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
    # We have two arrays of hashes, the first one of units, and the second one containing tenants
  # What are the properties for each of the two types of hashes
    # apartments - id, address, rent, size
    # tenants - id, name, age, which apartment

# Use enumerables to -
  # Print all the addresses for the apartments
  puts apartments.map{|unit| "#{unit[:address]}\n#{tenants.find_all{|peon| peon[:apartment_id]==unit[:id]}.map{|moneybag| moneybag[:name]}.join(", ")}"}
  # Print all the names for tenants
  puts tenants.map{|peon| "#{peon[:name]}, #{apartments[peon[:apartment_id]][:address]}"}
  # Print only apartments that are less then 700 in rent
  puts apartments.find_all{|unit| unit[:monthly_rent] < 700}
  # Print only tenants that are over the age of 44
  puts tenants.find_all{|peon| 44<peon[:age]}
  # Print only tenants that have an apartment id of 1
  puts tenants.find_all{|peon| peon[:apartment_id]==1}
  # Print all the tenants in order from youngest to oldest
  puts tenants.sort_by{|peon| peon[:age]}
  # Print the names of all the tenants alphabetically
  puts tenants.sort_by{|peon| peon[:name]}

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants
