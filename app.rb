# require 'pry'

require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
apartments = data[:apartments]
tenants = data[:tenants]
ruby_apartments = []
ruby_tenants = []

apartments.each do |apt|
 ruby_apartments << Apartments.new(apt[:id],apt[:address],apt[:monthly_rent],apt[:square_feet])
end

tenants.each do |tenant|
 ruby_tenants << Tenants.new(tenant[:id],tenant[:name],tenant[:age],tenant[:apartment_id])
end
#
# binding.pry
puts ruby_apartments
puts ruby_tenants
puts "Hi! Please type '1' to view all the apartments and '2' to view all the tenants!"
user_input = gets.chomp.to_i
if user_input == 1
  puts ruby_apartments
elsif user_input == 2
  puts ruby_tenants
else
  puts "Please enter correctly"
end
# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
    #The data are separated into two arrays Apartments and Tenants.
  # What are the properties for each of the two types of hashes
  #Each hash in Apartments array contains id, address, rent, and space.
  #Each hash in Tenants array contains id, name, age, and apartment_id

# Use enumerables to -
  # Print all the addresses for the apartments
  ruby_apartments.each do |apartment|
    puts ruby_apartment.address
  end
#   # Print all the names for tenants
  ruby_tenants.each do |tenant|
    puts tenant.name
  end


#   # Print only apartments that are less then 700 in rent
  ruby_apartments.each do |apartment|
    if apartment.monthly_rent < 700.to_i
    puts apartment.id
  end
  end
#   # Print only tenants that are over the age of 44
  ruby_tenants.each do |tenant|
    if tenant.age > 44.to_i
    puts tenant.name
  end
end
#   # Print only tenants that have an apartment id of 1
  ruby_tenants.each do |tenant|
    if tenant.id == 1.to_i
    puts tenant.name
  end
  end
#   # Print all the tenants in order from youngest to oldest
  young_to_old=ruby_tenants.sort_by do |tenant|
    tenant.age
  end
  puts young_to_old

#
#   # Print the names of all the tenants alphabetically
  alpha= ruby_tenants.sort_by do |tenant|
    tenant.name
  end
  puts alpha

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants
