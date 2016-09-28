require 'pry'

require_relative "data"

apartments = data[:apartments]
tenants = data[:tenants]



# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes

# Use enumerables to -
  # Print all the addresses for the apartments
address = apartments.each do |hash|
    puts hash[:address]
    puts "- - - - - - - - -"
end
  # Print all the names for tenants
names = tenants.each do |hash|
    puts hash[:name]
    puts "\n"
end
  # Print only apartments that are less then 700 in rent

only700 = apartments.each do |hash|
    if hash[:monthly_rent] < 700
        puts hash[:address]
        puts "- - - - - - - - -"
    end
end
  # Print only tenants that are over the age of 44

over44 = tenants.each do |hash|
    if hash[:age] > 44
        puts hash[:name]
        puts "\n"
    end
end
  # Print only tenants that have an apartment id of 1
ifUno = tenants.each do |hash|
    if hash[:apartment_id] == 1
        puts hash[:name]
        puts "- - - - - - - - -"
    end
end
  # Print all the tenants in order from youngest to oldest
young_to_old = tenants.sort_by do |hash|
    hash[:age]
end

puts young_to_old
puts "- - - - - - - - -"

alphabetically = tenants.sort_by do |hash|
    hash[:name]
end
puts alphabetically
  # Print the names of all the tenants alphabetically

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants

  binding.pry
puts "Dunzo!"