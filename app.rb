require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
require_relative "helpers/ui"
apartments = data[:apartments]
tenants = data[:tenants]

#part three: 
ruby_apartments = apartments.map do |apartment|
  Apartment.new(apartment[:id], apartment[:address], apartment[:monthly_rent], apartment[:square_feet])
end

ruby_tenants = tenants.map do |tenant|
  Tenant.new(tenant[:id], tenant[:name], tenant[:age], tenant[:apartment_id])
end

#PART ONE, SEE BELOW (HIDDEN)
#
# # Use enumerables to -
#
# # Print all the addresses for the apartments
# apartments.each do |apartment|
#   puts apartment[:address]
# end
#
# # Print all the names for tenants
# tenants.each do |tenant|
#   puts tenant[:name]
# end
# #
# # # Print only apartments that are less then 700 in rent
# apartments.each do |apartment|
#   if apartment[:square_feet] < 700
#     puts apartment[:address]
# end
# end
#
# # # Print only tenants that are over the age of 44
# tenants.each do |tenant|
#   if tenant[:age] > 44
#     puts tenant[:name]
#   end
# end
# #
# # # Print only tenants that have an apartment id of 1
# tenants.each do |tenant|
#   if tenant[:id] == 1
#     puts tenant[:name]
#   end
# end
#
# # # Print all the tenants in order from youngest to oldest
# # NEED TO REVISIT
# tenants.each do |tenant|
#   puts tenant.sort[:age]
# end
# #
# # # Print the names of all the tenants alphabetically
# #NEED TO REVISIT
# tenants.each do |tenant|
#   puts tenant.sort[:name]
# end
#

#PART TWO, SEE

puts "Hi Bob! How's it goin? OK? Cool. If you want to view your super-awesome-fancy-mod apartments please type 'one'. If you want to view your tenants, please type 'two'. THANKS!"
bobs_input = gets.chomp
if bobs_input == 'one'
  apartments.each do |apartment|
    puts apartment
  end
else
    tenants.each do |tenant|
    puts tenant
  end
end
