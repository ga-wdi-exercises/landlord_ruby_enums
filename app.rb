require_relative "data"
require "pry"

apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes

  # The data is structured into two arrays populated with hashes representing apartments and tenants. These arrays are then returned, as the values in one large hash, with appropriate key names as keys. The properties for apartments are id, address, monthly rent, and square feet. The properties for tenants are id, name, age, and apartment_id.

# Use enumerables to -
  # Print all the addresses for the apartments
  addresses = apartments.map{ |apartment| apartment[:address] }
  # Print all the names for tenants
  tenant_names = tenants.map { |tenant| tenant[:name]}
  # Print only apartments that are less then 700 in rent
  cheap_apartments = apartments.select { |apartment| apartment[:monthly_rent] < 700 }
  # Print only tenants that are over the age of 44
  old_tenants = tenants.select { |tenant| tenant[:age] > 44 }
  # Print only tenants that have an apartment id of 1
  tenants_apartment_id = tenants.select{ |tenant| tenant[:apartment_id] == 1 }
  # Print all the tenants in order from youngest to oldest
  youngest_to_oldest = tenants.sort_by { |tenant| tenant[:age] }
  # Print the names of all the tenants alphabetically
  alphabetically = tenants.sort_by { |tenant| tenant[:name]}


answer = ""

loop do
  puts "-----------------\nWelcome to Bob Pizza's Management System.\n------------\nIn order to access the system, please enter a value\nPress 1 for Apartments\nPress 2 for Tenants\nPress 3 to view a list of Apartments with their respective tenants\nPress 4 to view Tenants with their respective Apartments\nPress 5 to add an Apartment\nPress 6 to add a Tenant\nType exit to leave"
  answer = gets.chomp
  break if answer == "exit"
  if answer == "1"
    apartments.sort_by!{|apartment| apartment[:id]}
    puts apartments
  elsif answer == "2"
    tenants.sort_by!{|tenant| tenant[:id]}
    puts tenants
  elsif answer == "3"
    apt_id = ""
    loop do
      apartments.each_with_index do |apartment, i|
        spaces = " " * (30 - apartment[:address].length)
        tenants_with_apartment = tenants.select{ |tenant| apartment[:id] == tenant[:apartment_id] }
        puts "#{i+1}. #{apartment[:address]} #{spaces} #{tenants_with_apartment.map{ |tenant| tenant[:name]}.join(", ")}"
      end
      puts "Enter an apartment_id to represent that you would like to add or remove a tenant from\nEnter back to go back to your interface"
      apt_id = gets.chomp
      break if apt_id == "back"
      # puts "#{apartments.find{ |apartment| apartment[:id] === apt_id }}"
      tenants_in_apt = tenants.select { |tenant| tenant[:apartment_id] == apt_id.to_i}
      puts "The following tenants live in that apartment: \n#{tenants_in_apt.map{|tenant| tenant[:name]}.join(", ")}"
      puts "Would you like to add or remove a tenant?"
      answer = gets.chomp
      if answer == "add"
        puts "Enter the full name of the tenant you would like to add to that apartment."
        tenant_name = ""
        tenant_name = gets.chomp
        tenant_to_add = tenants.find{|tenant| tenant[:name] ==  tenant_name}
        tenant_to_add[:apartment_id] = apt_id.to_i
        puts "#{tenant_name} has been added to the apartment"
      elsif answer == "remove"
        puts "Enter the full name of the tenant you would like to remove from that apartment."
        tenant_name = ""
        tenant_name = gets.chomp
        tenant_to_remove = tenants_in_apt.find{|tenant| tenant[:name] ==  tenant_name}
        tenant_to_remove[:apartment_id] = nil
        puts "#{tenant_name} has been removed to the apartment"
      end
    end
    # binding.pry
  elsif answer == "4"
    tenants.each_with_index do |tenant, i|
      spaces = " " * (30 - tenant[:name].length)
      apartment_with_tenant = apartments.find{ |apartment| apartment[:id] == tenant[:apartment_id] }
      puts "#{i+1}. #{tenant[:name]} #{apartment_with_tenant[:address]}"
    end
  elsif answer == "5"
    apartment_to_add = {id: apartments.last[:id] + 1}
    puts "What is the address of the apartment?"
    address = gets.chomp
    puts "What is the monthly rent of an apartment?"
    monthly_rent = gets.chomp
    puts "What is the square feet of an apartment?"
    square_feet = gets.chomp
    apartment_to_add[:address] = address
    apartment_to_add[:monthly_rent] = monthly_rent
    apartment_to_add[:square_feet] = square_feet
    apartments << apartment_to_add
elsif answer == "6"
  tenant_to_add = {id: tenants.last[:id] + 1}
  puts "What is the name of the tenant?"
  name = gets.chomp
  puts "What is the age of the tenant?"
  age = gets.chomp
  puts "What is the apartment_id of the tenant?"
  apartment_id = gets.chomp
  tenant_to_add[:name] = name
  tenant_to_add[:age] = age
  tenant_to_add[:apartment_id] = apartment_id
  tenants << tenant_to_add
end
end
  # elsif answer == "5"
    # tenants.



  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants
