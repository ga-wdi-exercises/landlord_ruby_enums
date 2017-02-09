require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # The data are hashes nested in an array.
  # What are the properties for each of the two types of hashes
  # Tenants has: id, name, age, apartment_id. Apartments has: id, address, monthly_rent, and square_feet.


# Use enumerables to -
  # Print all the addresses for the apartments
  p answer_one = apartments.map{|x|  x[:address]}
  # Print all the names for tenants
  p answer_two = tenants.map{|x|  x[:names]}
  # Print only apartments that are less then 700 in rent
  p apartments.select{ |apartment| apartment[:monthly_rent] < 700 }
  # Print only tenants that are over the age of 44
  p tenants.select{ |tenant| tenant[:age] > 44 }
  # Print only tenants that have an apartment id of 1
  p tenants.select{ |tenant| tenant[:apartment_id] == 1}
  # Print all the tenants in order from youngest to oldest
  p tenants.sort_by{|tenant| tenant[:age]}
  # Print the names of all the tenants alphabetically
  p tenants.sort_by{|tenant| tenant[:name]}
  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.

  tenants.each do |tenant|
   apartment = apartments.find {|apartment| tenant[:apartment_id] == apartment[:id]}
   puts tenant[:name]
   puts apartment[:address]
 end
  # When printing all apartments, under each apartment print all of its tenants

  apartments.each do |apartment|
     tenant = tenants.select {|tenant| tenant[:apartment_id] == apartment[:id]}
     tenant.each do |tenant|
     puts apartment[:address]
     puts tenant[:name]
   end
   end
