require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes

# It appears that the data file is a functions that stores 2 arrays of objects
#   - Apartments Hash - contains 4 keys.  id (integer), address(string), monthly_rent(integer), square_feet(integrer)
#   - Tenants Hash - contains 4 keys. id(integer), name(string), age(integer), apartment_id(integer)


# Use enumerables to -
  # Print all the addresses for the apartments
  apartments.each { |hsh| puts hsh[:address]}
  puts "============================================="

  # Print all the names for tenants
  tenants.each { |hsh| puts hsh[:name]}
  puts "============================================="

  # Print only apartments that are less then 700 in rent
  apartments.each { |hsh| puts hsh if hsh[:square_feet] < 700}
  puts "============================================="

  # Print only tenants that are over the age of 44
  tenants.each { |hsh| puts hsh if hsh[:age] > 44}
  puts "============================================="

  # Print only tenants that have an apartment id of 1
  tenants.each { |hsh| puts hsh if hsh[:apartment_id] == 1}
  puts "============================================="

  # Print all the tenants in order from youngest to oldest
  puts tenants.sort_by {|hsh| hsh[:age]}
  puts "============================================="

  # Print the names of all the tenants alphabetically
  puts tenants.sort_by {|hsh| hsh[:name]}
  puts "============================================="


  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  apartments.each do |apartment|
    tenants.each do |tenant|
      id = tenant[:apartment_id]
      puts "#{tenant[:name]} - #{apartments[id]}" 
    end
  end

  puts "============================================="

  # When printing all apartments, under each apartment print all of its tenants
