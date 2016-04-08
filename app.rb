require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

#
# # First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
#   # Explain how the data is structured
#   # What are the properties for each of the two types of hashes
#
# # Use enumerables to -
#   # Print all the addresses for the apartments
#   all_addresses = apartments.map do |n|
#      n[:address]
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
#
# puts tenants_address
#   # When printing all apartments, under each apartment print all of its tenants
#   Bob Pizza is old school, and he wants a sick command line interface for this app. Bob's user stories:
#
#   ### MVP:
#   ```
#   ```
#

#   - I should have a numbered interface for my application so that I can just type in a number to access different parts of my program.
puts "Choose option to view data:"
puts "(1) View All Apartments"
puts "(2) View All Tenants"
puts "(3) View Tenants in each Apartment"
# puts "(x) to Exit"
# puts "(4) Search For a Tenant and Get Address"
input = gets.chomp

# until input != "x"
#   - I should be allowed an option to view all the apartments so that I can get an overview of my properties.
if input == "1"
  puts apartments

  #   - I should be allowed  an option view all the tenants so that I can get an overview of my tenants
elsif input == "2"
  puts tenants

  #   - I should be allowed an option to view all the apartments with their tenants so that I can get an overview of Occupancy.
elsif input = "3"
  puts tenants.sort_by { |e| e[:apartment_id]  }
  puts "*" *20
end
# end
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
