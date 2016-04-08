require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
# Explain how the data is structured


# What are the properties for each of the two types of hashes

# Use enumerables to -
# Print all the addresses for the apartments
all_addresses = apartments.each do |apartment|
   puts apartment[:address]
    end
#  # Print all the names for tenants
all_names = tenants.each do |tenant|
  puts tenant[:name]
end
#  # # Print only apartments that are less then 700 in rent
puts apartments.select{|my_apartments| my_apartments[:monthly_rent] < 700}

#  # # Print only tenants that are over the age of 44 select
puts tenants.select {|the_tenants| the_tenants[:age] > 44}
# Print only tenants that have an apartment id of 1
puts tenants.find_all { |person| person[:apartment_id] == 1 }
# Print all the tenants in order from youngest to oldest
puts tenants.sort_by {|person| person [:age]}
# # Print the names of all the tenants alphabetically
puts tenants.select {|person| person [:age]}

## More challenging
# When printing tenants also print out the address that the tenant resides in.
tenants.map do |person|
  puts person [:name]
  puts appartments [person[:apartment_id]][:address]
end
# When printing all apartments, under each apartment print all of its tenants
apartments.map do |unit|
  puts unit
  puts tenant.select{|person|person[:apartment_id]== unit[:id]}
end
# get appartment id and find each one of them.

puts "1) appartments overview"
puts "2) tenants overview"
puts "please enter your choice:"

input = gets.chomp

if input == "1"
  apartments.map do |unit|
    puts unit
  end
end
  if input == "2"
    tenants.map do |unit|
      puts unit
    end
  end
