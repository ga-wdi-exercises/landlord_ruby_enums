require "pry"

require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
apartments = data[:apartments]
tenants = data[:tenants]
ruby_apartments = []
ruby_tenants = []

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
# Explain how the data is structured
# 1.There are 2 arrays with 2 types of hashes
# What are the properties for each of the two types of hashes
# 1.apartments have id, address, monthly_rent,square_feet
# 2.tenants have id, name, age, apartment_id

# Use enumerables to -
# Print all the addresses for the apartments
addresses = apartments.map do |apartment|
  apartment[:address]
end
addresses

# Print all the names for tenants
names = tenants.map do |tenant|
  tenant[:name]
end
names

# Print only apartments that are less then 700 in rent
less_expencive_apartments = apartments.select do |apartment|
  apartment[:monthly_rent] < 700
end
less_expencive_apartments
# Print only tenants that are over the age of 44
tenants_over_forty = tenants.select do |tenant|
  tenant[:age] > 40
end
tenants_over_forty

# Print only tenants that have an apartment id of 1
tenants.each do |tenant|
  if tenant[:apartment_id] == 1
    tenant
  end
end

# Print all the tenants in order from youngest to oldest
tenants_by_age = tenants.sort_by do |tenant|
  tenant[:age]
end
tenants_by_age


# Print the names of all the tenants alphabetically
tenants_by_name = tenants.sort_by do |tenant|
  tenant[:name]
end
tenants_by_name



## More challenging
# When printing tenants also print out the address that the tenant resides in.

names.zip(addresses).each do |name|
  name
end

# When printing all apartments, under each apartment print all of its tenants

binding.pry

puts "end of the code!"


** Part 2 **

def app_interface
  loop do
    puts "Hello! Press 1 for tenant info or press 2 for Leasing office information "
    userInput = gets.chomp
    if userInput == 1
      puts data[:tenants]
    elsif userInput == 2
      puts data[:apartments]
    else
      puts "Unknown key. Please try again!"
    end

    ** Part 3 **
    require "pry"

    addresses = apartments.each do |apartment|
      ruby_apartments << apartment[:address]
    end

    names = tenants.map do |tenant|
      ruby_tenants << tenant[:name]
    end


    binding.pry
    puts "end"
