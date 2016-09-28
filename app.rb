require 'pry'

require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]
require_relative "models/apartment"
require_relative "models/tenant"

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
      #The data in data.rb is called in a method "data" and consists of two hashes (apartments and tenants).
  # What are the properties for each of the two types of hashes
      #The keys in apartment are id, address, monthly_rent, square_feet
      #The keys in tenants are id, name, age, and apartment_id
#
# # Use enumerables to -
#   # Print all the addresses for the apartments
#       apartments.length.times do |i|
#         puts "Address of apartment is #{apartments[i][:address]}"
#       end
#   # Print all the names for tenants
#       tenants.length.times do |i|
#         puts "Names of tenant is #{tenants[i][:name]}"
#       end
#   # Print only apartments that are less then 700 in rent
#       apartments.length.times do |i|
#         if apartments[i][:monthly_rent] < 700
#           puts "#{apartments[i][:address]} is less than $700"
#         end
#       end
#   # Print only tenants that are over the age of 44
#       tenants.length.times do |i|
#         if tenants[i][:age] > 44
#           puts "#{tenants[i][:name]} is over 44 years old"
#         end
#       end
#   # Print only tenants that have an apartment id of 1
#       tenants.length.times do |i|
#         if tenants[i][:apartment_id] ==1
#           puts "#{tenants[i][:name]} has an apartment id of 1"
#         end
#       end
#   # Print all the tenants in order from youngest to oldest
#       tenants_age_arr = []
#
#       tenants.length.times do |i|
#         tenants_age_arr << tenants[i][:age]
#         tenants_age_arr = tenants_age_arr.sort!
#       end
#       puts tenants_age_arr
#   # Print the names of all the tenants alphabetically
#       tenants_alph_arr = []
#
#       tenants.length.times do |i|
#         tenants_alph_arr <<tenants[i][:name]
#         tenants_alph_arr = tenants_alph_arr.sort!
#       end
#       puts tenants_alph_arr
#
#   ## More challenging
#   # When printing tenants also print out the address that the tenant resides in.
#   # When printing all apartments, under each apartment print all of its tenants
#
#
# binding.pry
# puts "done"

require 'pry'
#I should have a numbered interface for my application so that
#I can just type in a number to access different parts of my program.
loop do
  puts "To see all tenants, press '1'. To see all apartments, press'2', or press 'q' to quit."
  answer = gets.chomp

  if answer == "1"
      tenants.each do |tenant|
        puts tenant[:name]
      end
  elsif answer == "2"
    puts apartments
  else
    puts "You gave me #{answer}. Please enter '1' or '2'"
  end
  break if answer == "q"
end


binding.pry
puts "done"
