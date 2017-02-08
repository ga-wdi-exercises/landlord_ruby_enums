require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# # First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
#   # Explain how the data is structured
#     # The data is structured in two hashes, one of which delineates the apartments (and their relevant information) while the other lists the people living in those apartments
#
#   # What are the properties for each of the two types of hashes
#     # apartments
#     #   Id, Address, monthly_rent, square_feet
#     # tenants
#     #   id, name, age, apartment_id
#
# # Use enumerables to -
#   # Print all the addresses for the apartments
#     apartments.each {|apartment| puts apartment[:address] }
#
#   # Print all the names for tenants
#     tenants.each {|tenant| puts tenant[:name]}
#
#   # Print only apartments that are less then 700 in rent
#     puts apartments.select {|apartment| apartment[:monthly_rent] < 700}
#
#   # Print only tenants that are over the age of 44
#     puts tenants.select {|tenant| tenant[:age] > 44}
#
#   # Print only tenants that have an apartment id of 1
#     puts tenants.select {|tenant| tenant[:apartment_id] == 1}
#
#   # Print all the tenants in order from youngest to oldest
#     puts tenants.sort_by {|tenant| tenant[:age] }
#
#   # Print the names of all the tenants alphabetically
#     puts tenants.sort_by {|tenant| tenant[:name] }
#
#
#   ## More challenging
#   # When printing tenants also print out the address that the tenant resides in.
#     tenants.each do |tenant|
#       apartments.each do |apartment|
#         if apartment[:id] == tenant[:apartment_id]
#           tenant[:address] = apartment[:address]
#         end
#       end
#     end
#     puts tenants
#
#
#   # When printing all apartments, under each apartment print all of its tenants
#     apartments.each do |apartment|
#       apartment[:squatters] = []
#       tenants.each do |tenant|
#         if tenant[:apartment_id] == apartment[:id]
#           apartment[:squatters] << tenant[:name]
#         end
#       end
#     end
#     puts apartments


puts "\nThank you for calling Bob Pizza's Pizza Bomb.\nPlease listen closely to the following instructions.\n\n"
puts "If you would like to view all of your APARTMENTS, please press 1"
puts "If you would like to view all of the TENANTS in your apartments, please press 2"
puts "Go ahead. I'll wait."
input = gets.chomp
if input == "1"
  puts apartments
elsif input == "2"
  puts tenants
end
