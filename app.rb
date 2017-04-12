require_relative "data"
require_relative "models/apartment"
# require_relative "models/tenant"
apartments = data[:apartments]
tenants = data[:tenants]

# # First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
#   # Explain how the data is structured
#     # The data is structured in a method which returns two keys: apartments & tenants
#   # What are the properties for each of the two types of hashes
#     # apartments: id, address, monthly_rent, square_feet
#     # tenants: id, name, age, apartment_id
#
# # Use enumerables to -
#   # Print all the addresses for the apartments
#     data[:apartments].each do |apartment|
#       puts apartment[:address]
#     end
#   # Print all the names for tenants
#     data[:tenants].each do |tenant|
#       puts tenant[:name]
#     end
#   # Print only apartments that are less then 700 in rent
#   cheap_apartments = data[:apartments].select do |apartment|
#     apartment[:monthly_rent] < 700
#   end
#   puts cheap_apartments
#   # Print only tenants that are over the age of 44
#   age_over_44 = tenants.select {|tenant| tenant[:age] > 44}
#   puts age_over_44
#   # Print only tenants that have an apartment id of 1
#   apartment_id1 = apartments.select {|apartment| apartment[:id] == 1 }
#   puts partment_id1
#   # Print all the tenants in order from youngest to oldest
#   youngest_to_oldest = tenants.sort_by {|tenant| tenant[:age] }
#   puts youngest_to_oldest
#   # Print the names of all the tenants alphabetically
#   alphabetically = tenants.sort_by {|tenant| tenant[:name] }
#   puts alphabetically
#   ## More challenging
#   # When printing tenants also print out the address that the tenant resides in.
#   tanants.each {|tenant|
#     puts tenant[:name]
#     live_in = apartments.select {|apartment|
#       apartment[:id] == tenant[:apartment_id]
#     }
#     puts live_in.first[:address]
#   }
#   # When printing all apartments, under each apartment print all of its tenants

# value = 0
# while value >= 0 do
#
#     puts "show me a number -1 to quit"
#
#     value = gets.chomp.to_i
#
#     if value == 0
#       apartments.each{|apartment| puts apartment[:address]}
#     elsif value == 1
#       tenants.each{|tenant| puts tenant[:name]}
#     end
# end


ruby_apartments = []

apartments.each {|apartment|
  ruby_apartments <<
  Apartment.new(apartment[:id], apartment[:address],
  apartment[:monthly_rent], apartment[:square_feet])
}
puts ruby_apartments
