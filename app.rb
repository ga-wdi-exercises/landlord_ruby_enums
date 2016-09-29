require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

loop do
puts "Please press 1 to view all apartments or 2 to view tenants"
choice = gets.chomp.to_i
if choice == 1
  puts apartments
end
if choice == 2
  puts tenants
end
break if choice == 1 || choice == 2
end

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # 1.  The data is structured in key:value pairs within hashes.
  # What are the properties for each of the two types of hashes
  # 2. An apartment is composed of an id, address, monthly_rent, and square_feet
  #    A tenant is composed of an id, name, age, and apartment_id

# # Use enumerables to -
#   # Print all the addresses for the apartments
# apartments.each do |apartment|
#   puts apartment [:address]
# end
#   # Print all the names for tenants
# tenants.each do |tenant_name|
#   puts tenant_name [:name]
# end
#   # Print only apartments that are less then 700 in rent
# apartments.each do |sub_700|
#   if sub_700[:monthly_rent] < 700
#   puts sub_700 [:monthly_rent]
#   end
# end
#   # Print only tenants that are over the age of 44
# tenants.each do |above_44|
#   if above_44[:age] > 44
#   puts above_44 [:age]
#   end
# end
#   # Print only tenants that have an apartment id of 1
# tenants.each do |id1|
#   if id1[:apartment_id] == 1
#   puts id1 [:apartment_id]
#   end
# end
#   # Print all the tenants in order from youngest to oldest
# tenants.sort_by! {|tenant| tenant[:age]}
#   puts tenants
#   # Print the names of all the tenants alphabetically
# tenants.sort_by! {|tenant| tenant[:name]}
#   puts tenants
#   ## More challenging
#   # When printing tenants also print out the address that the tenant resides in.
#     tenants.each do |tenant|
#       tenantsApartmentId = tenant [:apartment_id]
#       apartment = apartments.find {|apartment| apartment[:id] == tenantsApartmentId}
#       puts apartment
#     end
#   # When printing all apartments, under each apartment print all of its tenants
#   apartments.each do |apartment|
#     puts apartment
#     apartmentId = apartment[:id]
#     puts tenant = tenants.find {|tenant| tenant[:apartment_id] == apartmentId}
#   end
