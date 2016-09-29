require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes

# Use enumerables to -
  # Print all the addresses for the apartments
  apartments.each do |location| # red means local
    puts location[:address]
  end
  # Print all the names for tenants
  tenants.each do |document|
    puts document[:name]
  end
  # Print only apartments that are less then 700 in rent
  apartments.each do |rent|
     if rent[:monthly_rent] < 700
       puts rent
    end
  end
  # Print only tenants that are over the age of 44
  tenants.each do |age|
    if age[:age] > 44
      puts age
    end
  end
  # Print only tenants that have an apartment id of 1
  tenants.each do |marker|
    if marker[:id] = 1
      put marker
    end
  end
  # Print all the tenants in order from youngest to oldest
  tenants.sort_by do |tenant| #already sorts from low to high
    tenant[:age]
  end
  # Print the names of all the tenants alphabetically
  tenants.sort_by do |tenant|
    tenant[:name]
  end
  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants
