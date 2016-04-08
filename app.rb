require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes

# # Use enumerables to -
#   # Print all the addresses for the apartments
#   apartments.map do |unit|
#     puts unit[:address]
#   end
#
#
#   # Print all the names for tenants
# tenants.map do |person|
#   puts person[:name]
# end
#
#   # Print only apartments that are less then 700 in rent
#   puts apartments.select{ |unit| unit[:monthly_rent] < 700 }
#   # Print only tenants that are over the age of 44
#   puts tenants.select{ |person| person[:age] > 44 }
#   # Print only tenants that have an apartment id of 1
#   puts tenants.select{ |person| person[:apartment_id] == 1 }
#   # Print all the tenants in order from youngest to oldest
#   puts tenants.sort_by{|person| person[:age].ord}
#   # Print the names of all the tenants alphabetically
#   puts tenants.sort_by{ |person| person[:name].ord }
#
#   ## More challenging
#   # When printing tenants also print out the address that the tenant resides in.
#   tenants.map do |person|
#     puts person[:name]
#     puts apartments[person[:apartment_id]][:address]
#   end
#   # When printing all apartments, under each apartment print all of its tenants
#   apartments.map do |unit|
#     puts unit
#     puts tenants.select{ |person| person[:apartment_id] == unit[:id] }
#   end

puts "1) apartments overview"
puts "2) tenants overview"
puts "Please enter your choice:"
input = gets.chomp

if input == "1"
  apartments.map do |unit|
       puts unit
  end
elsif input == "2"
  tenants.map do |person|
       puts person
  end
end
