require "pry"

require_relative "data"
apartments = data[:apartments]
tenants    = data[:tenants]

puts "type 1 if you want to access apartment's addresses"
puts "type 2 if you want to access the tenants list"
user_input = gets.chomp

if user_input == "1"
  address = apartments.each do |hash|
    puts hash[:address]
  end
elsif user_input == "2"
  name = tenants.each do |hash|
   puts hash[:name]
 end
end

#
# # First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
#   # Q. Explain how the data is structured
#   # A. The data is structured in two arrays (apartments and tenants) with hashes inside. All under the function 'data'
#
#   # Q. What are the properties for each of the two types of hashes
#   # A. For apartments, we have id, address, monthly_rent, square_feet
#   # A. For tenants, we have id, name, age, and apartment_id
#
# # Use enumerables to -
#   # Print all the addresses for the apartments
# address = apartments.each do |hash|
#   puts hash[:address]
# end
#
#   # Print all the names for tenants
# name = tenants.each do |hash|
#   puts hash[:name]
# end
#
#   # Print only apartments that are less then 700 in rent
# less_than_70 = apartments.each do |hash|
#   if hash[:monthly_rent] < 700
#     puts hash[:monthly_rent]
#   end
# end
#
#   # Print only tenants that are over the age of 44
# over_age_40 = tenants.each do |hash|
#   if hash[:age] > 40
#     puts hash[:age]
#   end
# end
#
#   # Print only tenants that have an apartment id of 1
#
# id_of_1 = tenants.each do |hash|
#   if hash[:id][1]
#     puts hash[:id]
#   end
# end
#
#   # Print all the tenants in order from youngest to oldest
#
# age_sort = tenants.sort_by do |hash|
#   p hash[:age]
# end
# puts age_sort
#
# # Print the names of all the tenants alphabetically
#
# name_sort = tenants.sort_by do |hash|
#   p hash[:name]
# end
# puts name_sort
#
#
#   ## More challenging
#   # When printing tenants also print out the address that the tenant resides in.
#
#   # When printing all apartments, under each apartment print all of its tenants
#
  binding.pry

  puts "the end"
