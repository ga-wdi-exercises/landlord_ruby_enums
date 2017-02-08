require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

## Explain how the data is structured:
#The data is in a function with two arrays (apartments and tenants), within the arrays there are hashes with details for each individual apartment or tenant.
## What are the properties for each of the two types of hashes
# tenants: id, name, age, and apartment
# apartments: id, address, monthly_rent, square_feet

# return {apartments:apartments, tenants:tenants}
# apartments.each do |apt|  # Prints all the addresses for the apartments
#   print apt[:address]
# end
# tenants.each do |tenant|
#   apartments.each do |apt|# Prints all the names for tenants # When printing tenants also print out the address that the tenant resides in.
#     if tenant[:apartment_id] == apt[:id]
#     puts "#{tenant[:name]} #{apt[:address]}"
#     end
#   end
# end
# # apartments.each do |apt|
#   if apt[:monthly_rent] < 700  # Print only apartments that are less then 700 in rent
#     puts apt[:address]
#   end
# end
# tenants.each do |tenant|
#   if tenant[:age] > 44 # Print only tenants that are over the age of 44
#     puts tenant[:name]
#   end
# end
# tenants.each do |tenant|
#   if tenant[:apartment_id] == 1  # Print only tenants that have an apartment id of 1
#     puts tenant[:name]
#   end
# end
#  puts tenants.sort_by{|tenant| tenant[:age]} #  Print all the tenants in order from youngest to oldest
#
#  puts tenants.sort_by{|name| name[:name]} # Print the names of all the tenants alphabetically
# apartment_tenants = []
#  tenants.each do |tenant|
#    # When printing all apartments, under each apartment print all of its tenants
#    apartment_tenants << tenant[:name]
#   apartments.each do |apt|
#     if apt[:id] == tenant[:apartment_id]
#       puts apt
#       puts apartment_tenants
#     end
#   end
# end
