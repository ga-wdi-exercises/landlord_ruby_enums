require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes

# Use enumerables to -
  # Print all the addresses for the apartments
  apartments.each do |apartment|
    puts apartment[:address]
  end
  # apartments[:address]
  # Print all the names for tenants
  # tenants[:name]
  tenants.each do |tenant|
    puts tenant[:name]
  end
  # Print only apartments that are less then 700 in rent
  low_apartments =apartments.select do |apartment|
    apartment[:monthly_rent]<700
  end
  puts low_apartments
  # Print only tenants that are over the age of 44
  old_tenants = tenants.select do |tenant|
    tenant[:age]>44
  end
  puts old_tenants

  # Print only tenants that have an apartment id of 1
  apt_id_one = tenants.select do |tenant|
    tenant[:apartment_id]==1
  end
  puts apt_id_one
  # Print all the tenants in order from youngest to oldest
  young_old = tenants.sort_by do |tenant|
    tenant[:age]
  end
  puts young_old

  # Print the names of all the tenants alphabetically
  alphabetical_tenants = tenants.sort_by do |a, b|
    a[:name].downcase <=> b[:name].downcase
  end
  puts alphabetical_tenants


  # More challenging
  When printing tenants also print out the address that the tenant resides in.
  tenants.each do |tenant|
    puts tenant[:name]
    tenants_apartment = apartments.find{|apartment| apartment[:id] == tenant[:apartment_id]}
    puts tenants_apartment[:name]
  end
  # When printing all apartments, under each apartment print all of its tenants
  apartments.each do |apartment|
    puts apartment[:address]
    tenants_of_apartment = tenants.select{|tenant| tenant[:apartment_id] == apartment[:id]}
    tenants_of_apartment.each do |tenant|
      puts tenant[:name]
    end
  end
