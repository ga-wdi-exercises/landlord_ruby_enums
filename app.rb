require_relative "data"
require_relative "classes/apartment"
require_relative "classes/tenant"
apartments = data[:apartments]
tenants = data[:tenants]

apartments = apartments.each do |apartment|
  Apartment.new(apartment[:id], apartment[:address], apartment[:monthly_rent], apartment[:square_feet])
end

tenants = tenants.map do |tenant|
  Tenant.new(tenant[:id], tenant[:name], tenant[:age], tenant[:apartment_id])
end

def landLord_app
  puts "Enter 1 to see all addresses."
  puts "Enter 2 to see all tenant names."


  entry = gets.chomp.to_i

  if entry == 1
    Apartment.list_addresses
  elsif entry == 2
    Tenant.list_names
  else
    puts "Please enter 1 or 2!"
  end
end

landLord_app

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
# Explain how the data is structured

#-The data is structured into two arrays within a function data.

# What are the properties for each of the two types of hashes

#-For data[:apartments], properties include id number, address, monthly_rent and square_feet.
# For data[:tenants], properties include id number, name, age, and apartment_id.


# Use enumerables to -
# Print all the addresses for the apartments
# apartments.each do |apartment|
#   puts apartment[:address]
# end
# # Print all the names for tenants
# tenants.each do |tenant|
#   puts tenant[:name]
# end
# # Print only apartments that are less then 700 in rent
# puts apartments.select {|apartment| apartment[:monthly_rent] < 700}
# # Print only tenants that are over the age of 44
# puts tenants.select {|tenant| tenant[:age] > 44}
# # Print only tenants that have an apartment id of 1
# puts tenants.select {|tenant| tenant[:id] == 1}
# # Print all the tenants in order from youngest to oldest
# puts tenants.sort{|left, right| left[:age] <=> right[:age]}
# # Print the names of all the tenants alphabetically
# puts tenants.sort{|first, last| first[:name] <=> last[:name]}
# ## More challenging
# # When printing tenants also print out the address that the tenant resides in.
# tenants.each do |tenant|
#   t_name = tenant[:name]
#   puts t_name
#   apt_id = tenant[:apartment_id]
#   matched_apt = apartments.select{|apt| apt[:id] == apt_id}
#   puts matched_apt[0][:address]
# end
# # When printing all apartments, under each apartment print all of its tenants
# apartments.each do |apartment|
#   a_name = apartment[:address]
#   puts a_name
#   apt_id = apartment[:id]
#   matched_apt = tenants.select{|ten| ten[:id] == apt_id}
#   puts matched_apt[0][:name]
# end
