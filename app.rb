require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
    # The data is inside two hashes, one for apartments, containing id numbers, addresses, rent amounts, and square footages. The other contains tenant info, assigns each tenant an id number, name, age, and the id number of the apartment they live in.
  # What are the properties for each of the two types of hashes
    # answered above


# Use enumerables to -
  # Print all the addresses for the apartments
  #
  # apartments.each do |apt|
  #   puts apt[:address]
  # end

  # Print all the names for tenants
  #
  # tenants.each do |name|
  #   puts name[:name]
  # end

  # Print only apartments that are less then 700 in rent

  # apartments.each do |address|
  #   if address[:monthly_rent]<= 700
  #     puts address
  #   end
  # end

  # Print only tenants that are over the age of 44
  #
  # tenants.each do |tenant|
  #   if tenant[:age]>44
  #     puts tenant[:name]
  #   end
  # end

  # Print only tenants that have an apartment id of 1
  #
  # tenants.each do |id|
  #   if id[:id] == 1
  #     puts id
  #   end
  # end

  # Print all the tenants in order from youngest to oldest
 #
 # youngest = tenants.sort_by do |tenant|
 #    tenant[:age]
 #    end
 #
 #      puts youngest
 #

  # Print the names of all the tenants alphabetically

  azOrder = tenants.sort_by do |tenant|
    tenant[:name]
  end

  puts azOrder

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants
