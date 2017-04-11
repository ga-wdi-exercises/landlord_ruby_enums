require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  #We have a function called "data" that pulls from two arrays (with each array comprised of hashes) and returns a hash with the apartments and tenants
  # What are the properties for each of the two types of hashes
  #For apartments, the properties are: id, address, monthly_rent, square_feet
  #For tenants, the properties are: id, name, age, apartment_id

# Use enumerables to -
  # Print all the addresses for the apartmentsses
  puts "Q1 addresses"
  address_info = apartments.each do |apartment|
    puts apartment[:address]
  end

#why won't this work?
  #   address_info = apartments.each do |apartment|
  #   return apartment[:address]
  # end
  # puts address_info


  # Print all the names for tenants
  puts "Q2 tenant names"
  name_info = tenants.each do |tenant|
    puts tenant[:name]
  end

  # Print only apartments that are less then 700 in rent
  puts "Q3 $700 rent"
  cheap_rents = apartments.find_all {|apartment| apartment[:monthly_rent] < 700}
  cheap_rents_addresses = cheap_rents.each do |apartment|
    puts apartment[:address]
  end
  # Print only tenants that are over the age of 44
  puts "Q4 tenants over 44"
  older_tenants = tenants.find_all {|tenant| tenant[:age] > 44}
  older_tenants_names = older_tenants.each do |tenant|
    puts tenant[:name]
  end
  puts older_tenants
  # Print only tenants that have an apartment id of 1
  puts "Q5 apartment id of 1"
  apartment_one = tenants.find_all {|tenant| tenant[:apartment_id] == 1}
  apartment_one_names = apartment_one.each do |tenant|
    puts tenant[:name]
  end
  # Print all the tenants in order from youngest to oldest
  puts "Q6 youngest to oldest"
  youngest_to_oldest = tenants.sort_by {|tenant| tenant[:age]}
  youngest_to_oldest_names = youngest_to_oldest.each do |tenant|
    puts tenant[:name]
  end
  # Print the names of all the tenants alphabetically
  puts "Q7 tenants alphabetically"
  tenants_alphabetically = tenants.sort_by {|tenant| tenant[:name]}
  tenants_alphabetically_name = tenants_alphabetically.each do |tenant|
    puts tenant[:name]
  end

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants
