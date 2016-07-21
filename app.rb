require "pry"
require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
apartments = data[:apartments]
tenants = data[:tenants]
ruby_apartments = []
ruby_tenants = []

apartments.each do |apartment|
  Apartment.new(apartment[:id], apartment[:address], apartment[:monthly_rent], apartment[:square_feet])
end

tenants.each do |tenant|
  Tenant.new(tenant[:id], tenant[:name], tenant[:age], tenant[:apartment_id])
end

puts "What do you want to access? Press '1' for Apartment listing, or '2' for Tenant listing."

input = gets.chomp

if input == "1"
apartments.each do |apartment|
   puts apartment
 end
elsif input == "2"
    tenants.each do |tenant|
   puts tenant
 end
end

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes

# Use enumerables to -
  # Print all the addresses for the apartments
# apartments.each do |apartment|
#   puts apartment[:address]
# end
  # Print all the names for tenants
# tenants.each do |tenant|
#   puts tenant[:name]
# end
  # Print only apartments that are less then 700 in rent
# puts apartments.select {|apartment| apartment[:monthly_rent] < 700}
  # Print only tenants that are over the age of 44
# puts tenants.select {|tenant| tenant[:age] > 44}
  # Print only tenants that have an apartment id of 1
# puts tenants.select {|tenant| tenant[:id] == 1}
  # Print all the tenants in order from youngest to oldest
# puts tenants.sort{|left, right| left[:age] <=> right[:age]}
  # Print the names of all the tenants alphabetically
# puts tenants.sort{|left, right| left[:name] <=> right[:name]}
  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants

binding.pry
