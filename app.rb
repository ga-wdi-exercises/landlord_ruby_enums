require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
apartments = data[:apartments]
tenants = data[:tenants]
ruby_apartments = []
ruby_tenants = []

ruby_apartments = apartments.each do |id, address, rent, size|
   ruby_apartments.push(Apartment.new(id, address, rent, size))
end

ruby_tenants = tenants.each do |id, name, age, apartment_id|
   ruby_tenants.push(Tenant.new(id, name, age, apartment_id))
end

puts "Welcome to MyAppartmentManager.com"
puts "1) To View All Apartments"
puts "2) To View All Tenants"
puts "3) To Exit"

selection = gets.chomp.to_i

if selection == 1
  puts ruby_apartments
elsif selection == 2
  puts ruby_tenants
else
  puts "Thanks for using MyAppartmentManager.com!"
  puts "If you would like to use our service again,"
  puts "please reload this page."
end





# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # The data is structured in 2 arrays, apartments and tenants, each consisting of multiple hashes.
  # What are the properties for each of the two types of hashes
  # The hashes within the apartments array contain keys for id, address, monthly_rent, and square_feet.
  # The hashes within the tenants array contain keys for id, name, age, and appartment_id.

# Use enumerables to -
  # Print all the addresses for the apartments
#   addresses = ruby_apartments.map do |apartment|
#     apartment[:address]
#   end
#   puts addresses

  # Print all the names for tenants
  # names = ruby_tenants.map do |name|
  #   name[:name]
  # end
  # puts names

  # Print only apartments that are less then 700 in rent
  # cheap_apartments = ruby_apartments.select{ |rent| rent[:monthly_rent] < 700}
  # puts cheap_apartments

  # Print only tenants that are over the age of 44
  # old_tenants = ruby_tenants.select{ |age| age[:age] > 44}
  # puts old_tenants

  # Print only tenants that have an apartment id of 1
  # apt_1 = ruby_tenants.select{ |apt| apt[:apartment_id] == 1}
  # puts apt_1

  # Print all the tenants in order from youngest to oldest
  # young_to_old = ruby_tenants.sort_by{ |age| age[:age]}
  # puts young_to_old


  # Print the names of all the tenants alphabetically
  # names_alphabetical = ruby_tenants.sort_by{ |name| name[:name]}
  # puts names_alphabetical


  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants
