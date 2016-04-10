require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
apartments_old = data[:apartments]
tenants_old = data[:tenants]
apartments = []
tenants = []

#id, address, monthly_rent, square_feet
apartments_old.map do |unit|
  unit_obj = Apartment.new(unit[:id], unit[:address], unit[:monthly_rent], unit[:square_feet])
  apartments << unit_obj
end

tenants_old.map do |renter|
  renter_obj = Tenant.new(renter[:id], renter[:name], renter[:age], renter [:apartment_id])
  tenants << renter_obj
end

# puts apartments
# puts tenants


# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
    # The data is split between two related layers, tenants and apartments.
    # tenants are linked to apartment via their apparment_id property.
    # An apartment has many tenants, each tenant has one apartment.
  # What are the properties for each of the two types of hashes
    # Apartments have an id, address, square_feet, and monthly_rent
    # Tenants have an id, age, name, and apartment_id
# # Use enumerables to -
#   # Print all the addresses for the apartments
#   apartments_old.map do |unit|
#     puts unit[:address]
#   end

# address_list = []
# apartments.each do |unit|
#   address_list << unit.address
# end
# puts address_list


#   # Print all the names for tenants
# tenants_old.map do |person|
#   puts person[:name]
# end

# name_list = []
# tenants.each do |person|
#   name_list << person.name
# end
# puts name_list


#   # Print only apartments that are less then 700 in rent
#   puts apartments_old.select{ |unit| unit[:monthly_rent] < 700 }

# cheap_units = apartments.select{ |unit| unit.monthly_rent < 700}
# puts cheap_units.inspect

#   # Print only tenants that are over the age of 44
#   puts tenants_old.select{ |person| person[:age] > 44 }


#   # Print only tenants that have an apartment id of 1
#   puts tenants_old.select{ |person| person[:apartment_id] == 1 }
#   # Print all the tenants in order from youngest to oldest
#   puts tenants_old.sort_by{|person| person[:age].ord}
#   # Print the names of all the tenants alphabetically
#   puts tenants_old.sort_by{ |person| person[:name].ord }
#
#   ## More challenging
#   # When printing tenants also print out the address that the tenant resides in.
#   tenants_old.map do |person|
#     puts person[:name]
#     puts apartments[person[:apartment_id]][:address]
#   end
#   # When printing all apartments, under each apartment print all of its tenants
#   apartments_old.map do |unit|
#     puts unit
#     puts tenants_old.select{ |person| person[:apartment_id] == unit[:id] }
#   end
input = 0
until input == "4" do
  puts "-" * 50
  puts "Hello Bob Pizza! Your empire awaits:"
  puts "-" * 50
  puts "1) Apartments Overview"
  puts "2) Tenants Overview"
  puts "3) Monthly Income"
  puts "4) Exit"
  puts "Please enter your choice:"
  input = gets.chomp

  if input == "1"
    puts "-" * 50
    apartments.map do |unit|
      puts "Apt#: #{unit.id} @ #{unit.address}, #{unit.square_feet}ft2: $#{unit.monthly_rent}/month"
    end
    puts "-" * 50
  elsif input == "2"
    puts "-" * 50
    tenants.map do |person|
      puts "#{person.id}] #{person.name}, #{person.age}yrs @ Apt. #{person.apartment_id}"
    end
    puts "-" * 50
  elsif input == "3"
    rents = apartments.map{ |unit| unit.monthly_rent}
    monthly_haul = rents.inject(0){|total_income,tenant_rent| total_income + tenant_rent }
    puts "-" * 50
    puts "Total income: $#{monthly_haul}/month"
    puts "-" * 50
  end
end
#
# if input == "1"
#   apartments_old.map do |unit|
#        puts unit
#   end
# elsif input == "2"
#   tenants_old.map do |person|
#        puts person
#   end
# end


# - I should be allowed an option to view all the apartments with their
#  tenants so that I can get an overview of Occupancy.

#tenants_old. apartments[:id]

# - I should be able to find where a tenant lives based on tenant name
#  in case of emergencies
