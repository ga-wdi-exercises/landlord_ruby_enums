require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
apartments = data[:apartments]
tenants = data[:tenants]
ruby_apartments = []
ruby_tenants = []

# # First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
# #   Explain how the data is structured
# #   What are the properties for each of the two types of hashes
# #     The data is held inside a function that returns a hash with two key value (where the value is an array of objects) pairs: "apartments" and "tenants". Each hash in the apartments array contains the keys id, address, monthly_rent, square_feet. Each hash in the tenants array contains the keys id, name, age, and apartment_id.
#

puts apartments[0] #first apartment
puts apartments[0][:square_feet]



# # Use enumerables to -
# # Print all the addresses for the apartments

all_addresses = ruby_apartments.map do |apartment|
  apartment.address
end

puts all_addresses

apartments.each do |apartment|
  puts apartment[:address]
end

# # Each does something for every item; map gives you a new array (of strings); determined by the code block after 'do'
# # Print all the names for tenants

all_names = tenants.map do |tenant|
    tenant[:name]
  end

  puts all_names

tenants.each do |tenant|
  puts tenant[:name]
end

# # Print only apartments that are less then 700 in rent

puts apartments.select {|apartment| apartment[:monthly_rent] < 700}

apartments.each do |apartment|
  if apartment[:monthly_rent] < 700
    puts apartment
  end
end

cheap_apartments = apartments.select do |apartment|
  apartment[:monthly_rent] < 700
end

cheap_apartments = apartments.reject do |apartment|
  apartment[:monthly_rent] >= 700
end

puts cheap_apartments

puts "I found #{cheap_apartments.length} apartments that match your critera:"
cheap_apartments.each do |apartment|
  puts apartment[:address]
end

# # Print only tenants that are over the age of 44

older_tenants = puts tenants.select {|tenant| tenant[:age] > 44}
puts older_tenants

# # Print only tenants that have an apartment id of 1

puts tenants.select {|tenant| tenant[:apartment_id] == 1}

# # Print all the tenants in order from youngest to oldest

sorted_tenants =  tenants.sort_by {|tenant| tenant[:age]}
puts sorted_tenants #(youngest->oldest)
puts "*" * 50
puts sorted_tenants.reverse #(oldest->youngest)

# # Print the names of all the tenants alphabetically

tenants.sort_by {|tenant| tenant[:name].downcase}
puts

### More challenging
# # When printing tenants also print out the address that the tenant resides in.

tenants.each do |tenant|

  tenants_apartment_id = tenant[:apartment_id]
  matching_apartments = apartments.find do |apartment|
    apartment[:id] == tenants_apartment_id
  end

  puts tenant
  puts matching_apartments
  puts "*" * 50
end

tenants.each do |tenant|

  tenants_apartment_id = tenant[:apartment_id]
  matching_apartments = apartments.find do |apartment|
    apartment[:id] == tenants_apartment_id
  end

  puts "#{tenant[:name]} lives at #{matching_apartments[:address]}"
  puts "*" * 50
end


# # When printing all apartments, under each apartment print all of its tenants

apartments.each do |apartment|
  puts "=" * 50
  puts apartment[:address]
  puts "=" * 50
  tenants_of_apartment = tenants.select{|tenant| tenant[:apartment_id] == apartment[:id]}
  tenants_of_apartment.each do |tenant|
    puts tenant[:name]
  end
end
