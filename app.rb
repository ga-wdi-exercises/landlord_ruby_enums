require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

#All data written in a method. Separated into an array of Apartment hashes and an array of tenant hashes
# apartment props: address, monthly_rent, square_feet
# tenant props: name, age, apartment_id


# Print all the addresses for the apartments
# apartments.each do |apartment|
#   puts apartment[:address]
# end
#
# # Print all the names for tenants
# tenants.each do |tenant|
#   puts tenant[:name]
# end
#
# # Print only apartments that are less then 700 in rent
# apartments.each do |apartment|
#   if apartment[:monthly_rent] < 700
#     puts apartment
#   end
# end
#
# # Print only tenants that are over the age of 44
# tenants.each do |tenant|
#   if tenant[:age] > 44
#     puts tenant
#   end
# end
#
# # Print only tenants that have an apartment id of 1
# tenants.each do |tenant|
#   if tenant[:apartment_id] == 1
#     puts tenant
#   end
# end
#
# # Print all the tenants in order from youngest to oldest
# tenants_by_age = tenants.sort_by do |tenant|
#   tenant[:age]
# end
# puts tenants_by_age
#
# # Print the names of all the tenants alphabetically
# tenants_alphabetically = tenants.sort_by do |tenant|
#   tenant[:name]
# end
# puts tenants_alphabetically
#
#
# # When printing tenants also print out the address that the tenant resides in.
# tenants.each do |tenant|
#   apartments.each do |apartment|
#     if tenant[:apartment_id] == apartment[:id]
#       puts "#{tenant[:name]} lives at #{apartment[:address]}"
#     end
#   end
# end
#
#
# # When printing all apartments, under each apartment print all of its tenants
# apartments.each do |apartment|
#   puts "#{apartment[:address]}"
#   occupants = tenants.select do |tenant|
#     apartment[:id] == tenant[:apartment_id]
#   end
#     occupants.map! do |occupant|
#       occupant[:name]
#   end
#     puts "    " + occupants.join(", ")
# end

def get_command(apartments, tenants)
  puts "Enter 1 to view apartments. Enter 2 to view tenants."
  user_input = gets.chomp

  if user_input == '1'
    apartments.each do |apartment|
      puts apartment
    end
  elsif user_input == '2'
    tenants.each do |tenant|
      puts tenant
    end
  else
    get_command
  end
end
get_command(apartments, tenants)
