require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
apartments = data[:apartments]
tenants = data[:tenants]
ruby_apartments = []
ruby_tenants = []


ruby_apartments = apartments.map do |apartment|
  Apartment.new(apartment[:id], apartment[:address], apartment[:monthly_rent], apartment[:square_feet])
end

ruby_tenants = tenants.map do |tenant|
  Tenant.new(tenant[:id], tenant[:name], tenant[:age], tenant[:apartment_id])
end

# # First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
# #   Explain how the data is structured
# #   What are the properties for each of the two types of hashes
# #     The data is held inside a function that returns a hash with two key value (where the value is an array of objects) pairs: "apartments" and "tenants". Each hash in the apartments array contains the keys id, address, monthly_rent, square_feet. Each hash in the tenants array contains the keys id, name, age, and apartment_id.


# puts ruby_apartments[0] #first apartment
# puts ruby_apartments[0].square_feet


#
# # # Use enumerables to -
# # # Print all the addresses for the apartments

all_addresses = ruby_apartments.map do |apartment|
  apartment.address
end
puts all_addresses
puts "-" * 60

# # Each does something for every item; map gives you a new array (of strings); determined by the code block after 'do'
# # Print all the names for tenants

all_names = ruby_tenants.map do |tenant|
    tenant.name
  end

  puts all_names
  puts "-" * 60

ruby_tenants.each do |tenant|
  puts tenant.name
end

puts "-" * 60
# # # Print only apartments that are less then 700 in rent
#
ruby_apartments.select {|apartment| apartment.monthly_rent < 700}

ruby_apartments.each do |apartment|
  if apartment.monthly_rent < 700
    puts apartment.address.to_s
    puts "Costs $" + apartment.monthly_rent.to_s + " per month"
  end
end

cheap_apartments = ruby_apartments.select do |apartment|
  apartment.monthly_rent < 700
end

cheap_apartments = ruby_apartments.reject do |apartment|
  apartment.monthly_rent >= 700
end

puts "I found #{cheap_apartments.length} apartments that match your critera:"
cheap_apartments.each do |apartment|
  puts apartment.address
end
#
# # # Print only tenants that are over the age of 44
#
puts "-" * 60
older_tenants = ruby_tenants.select do |tenant|
  tenant.age > 44
end
older_tenants.each do |tenant|
  puts tenant.name.to_s + " is " + tenant.age.to_s + " years old."
end

# # Print only tenants that have an apartment id of 1

puts "-" * 60
first_id = ruby_tenants.select {|tenant| tenant.apartment_id == 1}
first_id.each do |tenant|
  puts tenant.name
end
puts "-" * 60

# # Print all the tenants in order from youngest to oldest

sorted_tenants =  ruby_tenants.sort_by {|tenant| tenant.age}
sorted_tenants.each do |tenant|
   puts tenant.name.to_s + " is " + tenant.age.to_s + " years old."
end
puts "-" * 60
sorted_tenants.reverse.each do |tenant|
  puts tenant.name.to_s + " is " + tenant.age.to_s + " years old."
end


# # Print the names of all the tenants alphabetically

abc_tenants = ruby_tenants.sort_by {|tenant| tenant.name.downcase}
abc_tenants.each do |tenant|
  puts tenant.name
end

#
# ### More challenging
# # # When printing tenants also print out the address that the tenant resides in.
#
ruby_tenants.each do |tenant|
  tenants_apartment_id = tenant.apartment_id
  matching_apartments = ruby_apartments.find do |apartment|
    apartment.id == tenants_apartment_id
end

puts "#{tenant.name} | #{matching_apartments.address}".center(50)
puts "=" * 50
end

# # # When printing all apartments, under each apartment print all of its tenants

ruby_apartments.each do |apartment|
  puts "=" * 50
  puts apartment.address
  puts "=" * 50
  tenants_of_apartment = ruby_tenants.select{|tenant| tenant.apartment_id == apartment.id}
  tenants_of_apartment.each do |tenant|
    puts tenant.name
  end
  puts nil
end
