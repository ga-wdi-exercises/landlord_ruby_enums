require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured

# array of hashes for both the apartments and the tenants.
  # What are the properties for each of the two types of hashes

# apartments have :id, :address, :monthly_rent, :square_feet
# tenants have :id, :name, :age, :apartment_id

# Use enumerables to -
  # Print all the addresses for the apartments
  # apartments.each {|all_addresses| p all_addresses[:address]}
  # Print all the names for tenants
  # tenants.each{|tenant| p tenant[:name]}
  # Print only apartments that are less then 700 in rent
  # puts "rent less than 700"
  # puts "#"*30
  # apartments.select do |less_than_700|
  #   if less_than_700[:monthly_rent] <= 700
  #     p less_than_700
  #   end
  # end
  # Print only tenants that are over the age of 44
  # puts "older than 44"
  # puts "#"*30
  # tenants.select do |older_than_44|
  #   if older_than_44[:age] > 44
  #     p older_than_44
  #   end
  # end
  # Print only tenants that have an apartment id of 1
  # puts "apartment id of 1"
  # puts "#"*30
  # tenants.each do |id_of_1|
  #   if id_of_1[:apartment_id] == 1
  #     p id_of_1
  #   end
  # end
  # Print all the tenants in order from youngest to oldest
  # I really don't know
  # puts "sorting? Omg it does. 2 hours wasted on 'puts sorted' in the wrong place"
  # puts "#"*30
  # sorted = tenants.sort_by {|tenant|tenant[:age]}
  # puts sorted
  # Print the names of all the tenants alphabetically
  # puts "sorting alphabetically, still surprised"
  # puts "#"*30
  # sorted = tenants.sort_by {|tenant|tenant[:name]}
  # puts sorted

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants
