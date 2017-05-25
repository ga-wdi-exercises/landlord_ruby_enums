require 'pry'

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

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
# Explain how the data is structured
# There are two hashes in the method DATA.
# What are the properties for each of the two types of hashes
#Apartment properties: id, address, monthly_rent, square_feet
#Tenants properties: id, name, age, apartment_id

# Use enumerables to -
# Print all the addresses for the apartments
#   apartments.each do |apartment|
#     puts "#{apartment[:address]}"
#   end
# puts "-" * 80
# # Print all the names for tenants
#   tenants.each do |tenant|
#     puts "#{tenant[:name]}"
#   end
# puts "-" * 80
# # Print only apartments that are less then 700 in rent
#   apartments.each do |apartment|
#     if apartment[:monthly_rent] < 700
#       puts "#{apartment[:address]}, $#{apartment[:monthly_rent]}"
#     else
#     end
#   end
# puts "-" * 80
# # Print only tenants that are over the age of 44
#   tenants.each do |tenant|
#     if tenant[:age] > 44
#       puts "#{tenant[:name]}, #{tenant[:age]}"
#     else
#     end
#   end
# puts "-" * 80
# # Print only tenants that have an apartment id of 1
#   tenants.each do |tenant|
#     if tenant[:apartment_id] == 1
#       puts "#{tenant[:name]}, #{tenant[:apartment_id]}"
#     else
#     end
#   end
# puts "-" * 80
# # Print all the tenants in order from youngest to oldest
#   acesending = tenants.sort_by do |tenant|
#     tenant[:age]
#   end
#   puts acesending
# puts "-" * 80
# # Print the names of all the tenants alphabetically
#   alphabetically = tenants.sort_by do |tenant|
#     tenant[:name]
#   end
#   puts alphabetically
# puts "-" * 80
# ## More challenging
# # When printing tenants also print out the address that the tenant resides in.
#
# apartments.each do |apartment|
#   tenants.each do |tenant|
#     if apartment[:id] == tenant[:apartment_id]
#       puts "#{tenant[:name]}, #{apartment[:address]}"
#     else
#     end
#   end
# end
# puts "-" * 80
# # When printing all apartments, under each apartment print all of its tenants
# apartments.each do |apartment|
#   tenants.each do |tenant|
#     if apartment[:id] == tenant[:apartment_id]
#
#       puts "#{apartment[:address]}"
#       puts "#{tenant[:name]}"
#       puts "*" * 20
#
#     else
#     end
#   end
# end



loop do
  puts "Welcome to Bob Pizza Properties. Please choose the following:"
  puts "1 - View All Apartments"
  puts "2 - View All Tenants"
  puts "3 - Search Address by Tenant"
  puts "X - Exit"
  input = gets.chomp
  if input == "1"
    ruby_apartments.each do |apartment|
      puts "#{apartment.address}"
    end
  elsif input == "2"
    ruby_tenants.each do |tenant|
      puts "#{tenant.name}"
    end
  elsif input == "3"
    puts "Enter tenant's name:"
    tenant_name = gets.chomp
    ruby_tenants.each do |tenant|
      if tenant_name.downcase == tenant.name.downcase
        ruby_apartments.each do |apartment|
          if  apartment.id == tenant.apartment_id
            puts "#{apartment.address}"
          end
        end
      end
    end
  else input.downcase == "x"
    exit(true)
  end
end





binding.pry
