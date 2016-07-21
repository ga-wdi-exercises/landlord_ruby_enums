require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"

ruby_apartments = data[:apartments]
ruby_tenants = data[:tenants]

ruby_apartments = ruby_apartments.map do |apartment|
  Apartment.new(apartment[:id], apartment[:address], apartment[:monthly_rent], apartment[:square_feet])
end

ruby_tenants = ruby_tenants.map do |tenant|
  Tenant.new(tenant[:id], tenant[:name], tenant[:age], tenant[:apartment_id])
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
    # apartments.each do |apartment|
    #   if apartment[:monthly_rent] < 700
    #     puts apartment[:monthly_rent]
    #   end
    # end
# Print only tenants that are over the age of 44
    # tenants.each do |tenant|
    #   if tenant[:age] > 44
    #     puts tenant[:age]
    #   end
    # end
# Print only tenants that have an apartment id of 1
    # tenants.each do |tenant|
    #   if tenant[:id] == 1
    #     puts tenant[:name]
    #   end
    # end
# Print all the tenants in order from youngest to oldest
    # youngest_to_oldest = tenants.sort_by do |tenant|
    #   puts tenant[:age]
    # end
# Print the names of all the tenants alphabetically
    # name_ordered_tenants = tenants.sort_by do |a, b|
    #   a[:name].downcase <=> b[:name].downcase
    # end

## More challenging
# When printing tenants also print out the address that the tenant resides in.
# When printing all apartments, under each apartment print all of its tenants


#PART 2 Homework

#I should have a numbered interface for my application so that I can just type in a number to access different parts

puts "Give me a number. 1: Apartment addresses 2: Tenant names"
input = gets.chomp.to_s


#view all the apartments so that I can get an overview of my properties.
#List all apartments
if input == "1"
  puts "A list of apartments: "
  ruby_apartments.each do |apartment|
    puts apartment.address
  end
  #List all tenants
elsif input == "2"
  puts "A list of tenants"
  ruby_tenants.each do |tenant|
    puts tenant.name
  end
end
