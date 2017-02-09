require "pry"

require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]
require_relative "models/apartment"
require_relative "models/tenant"
new_apartments = []
new_tenants = []


# class Apartment
#   attr_accessor :id, :address, :monthly_rent, :square_feet
#   def initialize id, address, monthly_rent, square_feet
#     @id = id
#     @address = address
#     @monthly_rent = monthly_rent
#     @square_feet = square_feet
#   end
# end

# class Tenant
#   attr_accessor :id, :name, :age, :apartment_id
#   def initialize id, name, age, apartment_id
#     @id = id
#     @name = name
#     @age = age
#     @apartment_id = apartment_id
#   end
# end
#This function is creating a new hash locally by mapping over everything in the data file and creating a new object in the Apartment class
new_apartments = apartments.map do |apartment|
  Apartment.new(apartment[:id], apartment[:address], apartment[:monthly_rent], apartment[:square_feet])
end
#This function is creating a new hash locally by mapping over everything in the data file and creating a new object in the Tenant class
new_tenants = tenants.map do |tenant|
  Tenant.new(tenant[:id], tenant[:name], tenant[:age], tenant[:apartment_id])
end

##Now that everything actually exists here I should be able to finish the enumerables

# Use enumerables to -
  # Print all the addresses for the apartments
  
  new_apartments.each do |apartment|
    puts apartment.address
  end

  # Print all the names for tenants

  new_tenants.each do |tenants|
    puts tenants.name
  end

  # Print only apartments that are less then 700 in rent
  
  new_apartments.each do |cheap_ones|
    if cheap_ones.monthly_rent < 700
      puts cheap_ones.address
    end
  end

  # Print only tenants that are over the age of 44

  new_tenants.each do |elders|
    if elders.age > 44
      puts elders.name
    end
  end

  # Print only tenants that have an apartment id of 1

  # first_apartment = new_tenants.select {|id| id.apartment_id === 1}
  # puts first_apartment

  # Print all the tenants in order from youngest to oldest
  # Print the names of all the tenants alphabetically

puts "//////// MENU ///////////"
puts "Your Options"
puts "1. Apartment Overview"
puts "2. Tenants Overview"
puts "3. Occupancy Overview"
puts "Please select one of the above options"
choice = gets.to_i

if choice == 1
  puts "///////// Apartment Overview //////////"
  new_apartments.each do |apartment|
    puts apartment.address
  end

elsif choice == 2
  puts "//////// Tenants Overview /////////"
  new_tenants.each do |tenants|
    puts tenants.name
  end

else choice == 3
  puts "//////// Occupancy Overview //////////"
  occupancy = new_tenants.each do |num|
    num.apartment_id == apartment_id
    puts apartment_id
  end
  puts occupancy.name
end

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants

  binding.pry
