require 'pry'

require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
apartments = data[:apartments]
tenants = data[:tenants]
ruby_apartments = []
ruby_tenants = []


apartments.each do |apt|
  ruby_apartments << Apartment.new(apt[:id],apt[:address],apt[:monthly_rent],apt[:square_feet])
end

tenants.each do |ten|
  ruby_tenants << Tenant.new(ten[:id],ten[:name],ten[:age],ten[:apartment_id])
end

puts "Press: 1 to view apartments; 2 to view tenants"
choice = gets.chomp.to_i
if choice == 1
  puts data[:apartments]
elsif choice == 2
  puts data[:tenants]
end






# cheap = apartments.map { |apartment| apartment[:monthly_rent]}
# tenants.each { |tenant| puts tenant[:name]}

# cheap_apartments = apartments.select { |apartment| apartment[:monthly_rent] < 700 }
# puts cheap_apartments

# old_tenants = tenants.select { |tenant| tenant[:age] > 44}
# puts old_tenants

# tenant_1 = tenants.select { |tenant| tenant[:apartment_id] == 1}
# puts tenant_1

# tenants_by_age = tenants.sort_by { |tenant| tenant[:age]}
# puts tenants_by_age

# tenants_by_name = tenants.sort_by { |tenant| tenant[:name]}
# puts tenants_by_name

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes

# Use enumerables to -
  # Print all the addresses for the apartments
  # Print all the names for tenants
  # Print only apartments that are less then 700 in rent
  # Print only tenants that are over the age of 44
  # Print only tenants that have an apartment id of 1
  # Print all the tenants in order from youngest to oldest
  # Print the names of all the tenants alphabetically

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants

binding.pry
