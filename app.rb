require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # All data is contained within a function called data.
  # Within the function data there are two arrays. One is called 'apartments' and the other is 'tenants'.
  # Within each array there ara a collection of hashes representing each apartment and tenant respecively.
  # What are the properties for each of the two types of hashes
  # The hash called apartment is composed of four key value pairs. The keys are id, address, monthly_rent, and square_feet.
  # The hash called tenants is also composed of four keay value pairs. The keys are id, name, age, and apartment_id.

# Use enumerables to -
  # Print all the addresses for the apartments
  # apartments_addresses = apartments.map {|apartment| apartment[:address]}
  # puts apartments_addresses
  # Print all the names for tenants
  # tenants_names = tenants.map {|tenant| tenant[:name]}
  # puts tenants_names
  # Print only apartments that are less then 700 in rent
  # apartments_rent = apartments.find_all {|apartment| apartment[:monthly_rent] < 700}
  # puts apartments_rent
  # Print only tenants that are over the age of 44
  # tenants_ages = tenants.find_all {|tenant| tenant[:age] > 44}
  # puts tenants_ages
  # Print only tenants that have an apartment id of 1
  # tenants_ids = tenants.find_all {|tenant| tenant[:id] == 1}
  # puts tenants_ids
  # Print all the tenants in order from youngest to oldest
  # tenants_ages_ordered = tenants.sort_by {|tenant| tenant[:age]}
  # puts tenants_ages_ordered
  # Print the names of all the tenants alphabetically
  # tenants_oredered = tenants.map {|tenant| tenant[:name]}
  # puts tenants_oredered.sort

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  tenants.each do |tenant|
    puts tenant[:name]
    tenant_apartment = apartments.find {|apartment| apartment[:id] == tenant[:apartment_id]}
    puts tenant_apartment
  end
  # When printing all apartments, under each apartment print all of its tenants
  apartments.each do |apartment|
    puts apartments[:address]
    apartment_tenants =

  puts "Welcome back Bob. Select an option"
  puts "make a selection. 1 for apartments. 2 for tenants. 3 to exit "
  bob_input = gets.chomp
  while
    if bob_input == "1"
      puts "Apartments:"
      apartments_addresses = apartments.map {|apartment| apartment[:address]}
      puts apartments_addresses
      break
    elsif bob_input == "2"
      puts "tenants:"
      tenants_names = tenants.map {|tenant| tenant[:name]}
      puts tenants_names
      break
    else
      puts "Have a good day Bob"
    end
    break if bob_input == "3"
  end
