# require 'pry'
require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
apartments = data[:apartments]
tenants = data[:tenants]
ruby_apartments = []
ruby_tenants = []

apartments.each do |apartment|
  m = Apartment.new apartment[:id], apartment[:address], apartment[:monthly_rent], apartment[:square_feet]
  ruby_apartments << m
end
# puts ruby_apartments

tenants.each do |t|
  m = Tenant.new t[:id], t[:name], t[:age], t[:apartment_id]
  ruby_tenants << m
end


  puts "Press 1 to view all apartment addresses."
  puts "Press 2 to view all tenants."
  input = gets.chomp
  puts input

  if input.to_i == 1
    ruby_apartments.each do |apartment|
      puts apartment.address
    end
  end
  if input.to_i == 2
    ruby_tenants.each do |a|
      puts a.name
    end
  end


# binding.pry
# puts done
# puts ruby_tenants


# # First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
#   # Explain how the data is structured
#   # Each is an array with hashes inside.
#   # What are the properties for each of the two types of hashes
#   #apartments have :id, :address, :monthly_rent, :square_feet keys.
#   #tenants have :id, :name, :age, :apartment_id,
#
# # Use enumerables to -
#   # Print all the addresses for the apartments
#   apartments.each do |apartment|
#     puts apartment[:address]
#   end
#   # Print all the names for tenants
#   tenants.each do |a|
#     puts a[:name]
#   end
#   # Print only apartments that are less then 700 in rent
#   apartments.each do |apartment|
#     if apartment[:monthly_rent] < 700
#     puts apartment
#   end
#   end
#   # Print only tenants that are over the age of 44
#   tenants.each do |a|
#     if 44 < a[:age]
#     puts a
#   end
#   end
#   # Print only tenants that have an apartment id of 1
#   tenants.map {|tenant|
#     if tenant[:apartment_id] == 1
#       puts tenant
#     end
#   }
#   # Print all the tenants in order from youngest to oldest
#   byAge = tenants.sort_by do |item|
#     item[:age]
#   end
#     puts byAge
#   # Print the names of all the tenants alphabetically
#   byA = tenants.sort_by do |item|
#     item[:name]
#   end
#     puts byA
#
#   ## More challenging
#   # When printing tenants also print out the address that the tenant resides in.
#   # When printing all apartments, under each apartment print all of its tenants
