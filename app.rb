require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
apartments = data[:apartments]
tenants = data[:tenants]

ruby_apartments = []
ruby_tenants = []
#id, address, monthly_rent, square_feet
ruby_apartments.each do |unit|
  unit = Apartment.new(unit[:id], unit[:address], unit[:monthly_rent], unit[:square_feet])
  apartments << ruby_apartments
end
# id, name, age, apartment_id
ruby_tenants.each do |tenant|
  tenant = Tenant.new(tenant[:id], tenant[:name], tenant[:age], tenant [:apartment_id])
  tenants << ruby_tenants
end
puts "1) apartments overview"
puts "2) tenants overview"
puts "3) apartments with tenant overview"
puts "4) find tenant name"
puts "please enter your choice:"

input = gets.chomp

if input == "1"
  apartments.map do |unit|
    puts unit
  end
end
  if input == "2"
    tenants.map do |unit|
      puts unit
    end

  # silver

elsif input == "3"
apartments.map do |apartment|
  puts apartment
end
elsif input == "4"
  tenants.map do |tenant|
      puts tenant
      puts '*' * 50
  end

end











# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
# Explain how the data is structured


# What are the properties for each of the two types of hashes

# Use enumerables to -
# Print all the addresses for the apartments
# all_addresses = apartments.each do |apartment|
#   puts apartment[:address]
# end
#     # all_addresses = apartments.each do |apartment|
#     #   apartment[:address]
#     #     end
#     #     puts all_addresses.inspect
# #  # Print all the names for tenants
# all_names = tenants.each do |tenant|
#   puts tenant[:name]
# end
# #  # # Print only apartments that are less then 700 in rent
# puts apartments.select{|my_apartments| my_apartments[:monthly_rent] < 700}

# if apartment[:monthely_rent] < 700
#   puts apartment
# end
# end
# cheap_apartments = apartments.select  do |apartment|
#   apartment[:monthely_rent] < 700
# end
# cheap_apartments.each do |apartment|
#   cheap_apartments[:address]
# end
# puts "I found #{{cheap_apartments}}"
# cheap_apartments.each do |apartment|
#   cheap_apartments[:address]
# end
# #  # # Print only tenants that are over the age of 44 select
# puts tenants.select {|the_tenants| the_tenants[:age] > 44}
# # oder_tenants = tenants.select {|tenant| tenant[:a] > 44}
# # Print only tenants that have an apartment id of 1
# puts tenants.find_all { |person| person[:apartment_id] == 1 }
# # Print all the tenants in order from youngest to oldest
# puts tenants.sort_by {|person| person [:age]}
#
# # sorted_tenants = tenants.sort_by do |tenant|
# #   tenant [:age]
# # end
# # puts sorted_tenants
# # sorted_tenants = tenants.sort_by do |tenant|
# #  -1 * tenant [:age]
# # end
# # puts sorted_tenants
# # # Print the names of all the tenants alphabetically
# puts tenants.select {|person| person [:age]}
#
# ## More challenging
# # When printing tenants also print out the address that the tenant resides in.
# tenants.map do |person|
#   puts person [:name]
#   puts appartments [person[:apartment_id]][:address]
# end
#
# tenants.each do
# # When printing all apartments, under each apartment print all of its tenants
# apartments.map do |unit|
#   puts unit
#   puts tenant.select{|person|person[:apartment_id]== unit[:id]}
# end
# get appartment id and find each one of them.
