require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
    # data is structured with two key values in a method.
  # What are the properties for each of the two types of hashes
    # For first hash, contains an array that include properties of id, address, rent and square feet.
    # For second hash, contains a array that include properties of id, name, age, and id of apartments.

# Use enumerables to -
  # Print all the addresses for the apartments
    # apartments.each do |apartment|
      # puts apartment[:address]
    # end

  # Print all the names for tenants
    # tenants.each do |tenant|
      # puts tenant[:name]
    # end

  # Print only apartments that are less then 700 in rent
    # less_apartments = apartments.select do |apartment|
      # apartment[:monthly_rent] < 700
    # end
    # puts less_apartments

  # Print only tenants that are over the age of 44
    # over_tenants = tenants.select do |tenant|
      # tenant[:age] > 44
    # end
    # puts over_tenants

  # Print only tenants that have an apartment id of 1
    # id_one_tenants = tenants.select do |tenant|
      # tenant[:apartment_id] == 1
    # end
    # puts id_one_tenants

  # Print all the tenants in order from youngest to oldest
    # order_age_tenants = tenants.sort_by do |tenant|
      # tenant[:age]
    # end

  # Print the names of all the tenants alphabetically
    # order_name_tenants = tenants.sort_by do |a, b|
      # a[:name].downcase <=> b[:name].downcase
    # end

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants.

puts "Welcome to Bob Pizza's App, Press enter key to continue."
user_input = gets.chomp

while user_input != "end"

puts "Enter one of number below to access to App program"
puts "1. Overview lists of all properties of apartment"
puts "2. Overview of all the tenants"
puts "3. Overview of Occupancy"
puts "4. Apartment by Tenant Name"

user_input = gets.chomp

if user_input == "1"
  apartments.each do |apartment|
    puts "#{apartment[:id]}, #{apartment[:address]}"
  end
end

if user_input == "2"
  tenants.sort_by {|tenant| tenant[:name]}
  tenants.each do |tenant|
    puts "Name: #{tenant[:name]}"
  end
end

if user_input == "3"
  apartments.each do |apartment|
    puts "#{apartment[:id]}, #{apartment[:address]}"
    tenants.each do |tenant|
      if tenant[:apartment_id] == apartment[:id]
        puts tenant[:name]
      end
    end
  end
end

if user_input == "4"
  tenants.each do |tenant|
    puts tenant[:name]
  end
  puts " "
  puts "Enter the tenant name"
  name = gets.chomp
  search_tenant = tenants.select do |tenant|
    tenant[:name] == name
  end
  search_apartment = apartments.select do |apartment|
        apartment[:id] == search_tenant[0][:apartment_id]
      end
    puts "#{search_tenant[0][:name]}, #{search_apartment[0][:address]}"
  end

puts " "
puts "If you want to continue to search, type continue or type stop to end the program"
user_input = gets.chomp
end
