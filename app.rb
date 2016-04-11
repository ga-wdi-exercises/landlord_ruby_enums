require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"

apartments = data[:apartments]
tenants = data[:tenants]
ruby_apartments = []
ruby_tenants = []

puts apartments
# loop over apartments

apartments.each do |apartment|
  Apartment.new
  ruby_apartments << apartment
end
puts ruby_apartments

# Some code from a codecademy lesson for iterating over hashes:
# lunch_order = {
#   "Ryan" => "wonton soup",
#   "Eric" => "hamburger",
#   "Jimmy" => "sandwich",
#   "Sasha" => "salad",
#   "Cole" => "taco"
# }
#
# lunch_order.each { |x, y| puts "#{y}" }
#
# for each hash -> create a new apartment using the info in the hash
# put the new apartment object in the ruby_apartments array
#
# puts "what do you want to do? 1. see all apartments. 2. quit"
# choice = gets.chomp
#
# if choice == "2"
#   exit
# else
#   # show all apartments
# end
#
#
#
#
#
#
#
# ###  OLD CODE OLD CODE OLD CODE OLD CODE OLD CODE OLD CODE OLD CODE
#
# # First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
#   # Explain how the data is structured
# # It's in two arrays each containing different numbers of hashes.
# #
# #   # What are the properties for each of the two types of hashes
# # The apartments array has address, rent, size, and
# #
# # # Use enumerables to -
# #   # Print all the addresses for the apartments
#   all_addresses = apartments.map do |n|   # can rename n as apartment,
#      n[:address]                          # which makes it easier to read.
#   end
#   puts all_addresses
# puts "*" * 50
#   # Print all the names for tenants
#   all_names = tenants.map do |n|
#     n[:name]
#   end
#   puts all_names.inspect
# puts "*" * 50
#   # # Print only apartments that are less then 700 in rent
#   # cheap_apartments = apartments.each do |n|
#   #   apartments.select {n[:monthly_rent] < 700}
#   # end
#   #  This one ^^^^^ doesn't work and I can't figure out why.
#
#  cheap_apartments = apartments.select {|a| a[:monthly_rent] < 700 }
#   puts cheap_apartments
# puts "*" * 50
#
# Another version; same functionality, different appearance:
#  cheap_apartments = apartments.select do |apartment|
#     apartment[:monthly_rent] < 700
#  end
#  puts cheap_apartments
#
# A version with .reject would use >= 700 instead.
#
# A version to show only their addresses would add:
# puts "I found #{cheap.apartments.length} apartments matching your criteria:"
# cheap_apartments.each do |apartment|
#   puts apartment[:address]
# end
#
#
#
#   # Print only tenants that are over the age of 44
#   old_tenants = tenants.select {|a| a[:age] > 44}
#   puts old_tenants
# puts "*" * 50
#
#   # Print only tenants that have an apartment id of 1
#   apartment_1_tenant = tenants.select {|a| a[:apartment_id] == 1}
#   puts apartment_1_tenant
# puts "*" * 50
#
#   # Print all the tenants in order from youngest to oldest
#   tenants_by_age = tenants.sort_by { |e| e[:age]  }
#   puts tenants_by_age
#
#   To display oldest to youngest:
#   puts tenants_by_age.reverse
#
# puts "*" * 50
#
#   # Print the names of all the tenants alphabetically
# puts "Tell your tenants to stop adding junk to their names."
# puts "*" * 50
#
#   ## More challenging
#
#   # When printing tenants also print out the address that the tenant resides in.
# # tenants_address = tenants.map do |n|
# #   apartments[address]
# # end
# tenants_address = []
#  tenants.inject([]) do |apartments, address|
#  tenants_address  <<  [:address]
# end
#         # ^^^^^ This doesn't work ^^^^
# Try this:
# puts tenants_address
#
# Or this:
# tenants.each do |tenant|
#   puts tenant
#   apartment_id = tenant[:apartment_id]
#
#   # When printing all apartments, under each apartment print all of its tenants
# ## More challenging
# When printing tenants also print out the address that the tenant
# resides in.
#
# tenants.each do |tenant|
#
#   tenants_apartment_id = tenant[:apartment_id]
#   matching_apartment = apartments.find do |apartment|
#     apartment[:id] == tenants_apartment_id
#   end
#
#   puts "#{tenant[:name]} lives at #{matching_apartment[:address]}"
#   puts "*" * 50
# end
#
#
# # When printing all apartments, under each apartment print all of its tenants
# # apartments.each do |apartment|
# #   puts apartment[:address]
# #   tenants_of_apartment = tenants.select{|tenant| tenant[:apartment_id] == apartment[:id]}
# #   tenants_of_apartment.each do |tenant|
# #     puts tenant[:name]
# #   end
# #   puts nil # empty line
# # end
# #   Bob Pizza is old school, and he wants a sick command line interface for this app. Bob's user stories:
# #
# #   ### MVP:
# #   ```
# #   ```
# #
#
# #   - I should have a numbered interface for my application so that I can just type in a number to access different parts of my program.
# puts "Starting review.  Make sure your Terminal window is at least 90 columns wide."
# puts "Choose option to view data:"
# puts "(1) View All Apartments"
# puts "(2) View All Tenants"
# puts "(3) View Tenants in each Apartment"
# puts "(4) Search For a Tenant and Get Address"
# puts "(x) to Exit"
#
# input = gets.chomp
#
# if input == "x"
#   exit
# #   - I should be allowed an option to view all the apartments so that I can get an overview of my properties.
# elsif input == "1"
#   puts apartments
#
#   #   - I should be allowed  an option view all the tenants so that I can get an overview of my tenants
# elsif input == "2"
#   puts tenants
#
#   #   - I should be allowed an option to view all the apartments with their tenants so that I can get an overview of Occupancy.
# elsif input == "3"
#   puts tenants.sort_by { |tenant| tenant[:apartment_id]  }
#   puts "*" *20
#
# elsif input == "4"
#   tenants.each do |tenant|
#
#     tenants_apartment_id = tenant[:apartment_id]
#     matching_apartment = apartments.find do |apartment|
#       apartment[:id] == tenants_apartment_id
#     end
#     puts "#{tenant[:name]} lives at #{matching_apartment[:address]}"
#     puts "- " * 30
#   end
# end
# # end
# #
#

#   ### Silver:
#   ```
#   - I should be able to find where a tenant lives based on tenant name in case of emergencies.
#   ```
#
#   ### Gold:
#   ```
#   - I should be allowed to remove a tenant from an apartment so that I can track evictions/lease ends
#   - I should be allowed to add a tenant to an apartment so that I can track occupancy.
#   - I should be allowed to create a new apartment so that I can track new properties in my books
#   - I should be allowed to create a new tenant so that I can track new tenants in my books.
#   ```
#
#   ### DO MOAR
#   If you've completed all the above features. Add more! Be creative!
