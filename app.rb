require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes

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

  # The data is structured in two arrays.  One for apartments and one for tenants.  The apartments have values of ID, address, monthly rent and square feet.  The tenants have ID, name, age, and apartment ID.
  # # Print all the addresses for the apartments
  # apartments.each{|unit| puts unit[:address]}
  # # Print all the names for tenants
  # tenants.each{|name| puts name[:name]}
  # # Print only apartments that are less then 700 in rent
  # low = apartments.each{|unit| unit[:monthly_rent] < 700}
  # p low
  # # Print only tenants that are over the age of 44
  # old_tenants = tenants.each{|age| age[:age] > 44}
  # p old_tenants
  # # Print only tenants that have an apartment id of 1
  # apt_number_1 = apartments.each{|unit| unit[:id] == 1}
  # # Print all the tenants in order from youngest to oldest
  # young_to_old = tenants.sort_by{|yto| yto[:age]}
  # p young_to_old
  # # Print the names of all the tenants alphabetically
  # alpha = tenants.sort_by{|alpha| alpha[:name]}
  # p alpha.each

  puts "Hello Mr. Landlord!  Press 1 for apartments, press 2 for tenants"
  answer = gets.chomp
  if answer == 1
    apartments.each{|unit| puts unit[:address]}
  elsif answer ==
    tenants.each{|name| puts name[:name]}
    break
  end
