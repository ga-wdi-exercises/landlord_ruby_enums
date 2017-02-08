require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
require "pry"

ruby_apartments = []
ruby_tenants = []

data[:apartments].each { |apartment| ruby_apartments << ruby_apartment = Apartment.new(apartment[:id], apartment[:address], apartment[:monthly_rent], apartment[:square_feet])}

data[:tenants].each { |tenant| ruby_tenants << ruby_tenant = Tenant.new(tenant[:id], tenant[:name], tenant[:age], tenant[:apartment_id])}


# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes

  # The data is structured into two arrays populated with hashes representing ruby_apartments and ruby_tenants. These arrays are then returned, as the values in one large hash, with appropriate key names as keys. The properties for ruby_apartments are id, address, monthly rent, and square feet. The properties for ruby_tenants are id, name, age, and apartment_id.

# Use enumerables to -
  # Print all the addresses for the ruby_apartments
  # addresses = ruby_apartments.map{ |apartment| apartment.get_name }
  # Print all the names for ruby_tenants
  # tenant_names = ruby_tenants.map { |tenant| tenant.get_name}
  # Print only ruby_apartments that are less then 700 in rent
  # cheap_apartments = ruby_apartments.select { |apartment| apartment[:monthly_rent] < 700 }
  # Print only ruby_tenants that are over the age of 44
  # old_tenants = ruby_tenants.select { |tenant| tenant[:age] > 44 }
  # Print only ruby_tenants that have an apartment id of 1
  # tenants_apartment_id = ruby_tenants.select{ |tenant| tenant.get_apartment_id == 1 }
  # Print all the ruby_tenants in order from youngest to oldest
  # youngest_to_oldest = ruby_tenants.sort_by { |tenant| tenant[:age] }
  # Print the names of all the ruby_tenants alphabetically
  # alphabetically = ruby_tenants.sort_by { |tenant| tenant.get_name}


answer = ""
loop do
  puts "-----------------\nWelcome to Bob Pizza's Management System.\n------------\nIn order to access the system, please enter a value\nPress 1 for Apartments\nPress 2 for Tenants\nPress 3 to view a list of Apartments with their respective tenants\nPress 4 to view Tenants with their respective Apartments\nPress 5 to add an Apartment\nPress 6 to add a Tenant\nType exit to leave"
  answer = gets.chomp
  break if answer == "exit"
  if answer == "1"
    ruby_apartments.each{|apartment| puts apartment.get_address }
  elsif answer == "2"
    ruby_tenants.each{|tenant| puts tenant.get_name}
  elsif answer == "3"
    apt_id = ""
    loop do
      ruby_apartments.each_with_index do |apartment, i|
        spaces = " " * (30 - apartment.get_address.length)
        tenants_with_apartment = ruby_tenants.select do |tenant|
          apartment.get_id == tenant.get_apartment_id
        end
        puts "#{i+1}. #{apartment.get_address} #{spaces} #{tenants_with_apartment.map{ |tenant| tenant.get_name}.join(", ")}"
      end
      puts "Enter an apartment_id that you would like to add or remove a tenant from\nEnter back to go back to your interface"
      apt_id = gets.chomp
      break if apt_id == "back"
      # puts "#{ruby_apartments.find{ |apartment| apartment.get_id === apt_id }}"
      tenants_in_apt = ruby_tenants.select { |tenant| tenant.get_apartment_id == apt_id.to_i}
      puts "The following ruby_tenants live in that apartment: \n#{tenants_in_apt.map{|tenant| tenant.get_name}.join(", ")}"
      puts "Would you like to add or remove a tenant?"
      answer = gets.chomp
      if answer == "add"
        puts "Enter the full name of the tenant you would like to add to that apartment."
        tenant_name = ""
        tenant_name = gets.chomp
        tenant_to_add = ruby_tenants.find{|tenant| tenant.get_name ==  tenant_name}
        tenant_to_add.set_apartment_id(apt_id.to_i)
        puts "#{tenant_name} has been added to the apartment"
      elsif answer == "remove"
        puts "Enter the full name of the tenant you would like to remove from that apartment."
        tenant_name = ""
        tenant_name = gets.chomp
        tenant_to_remove = tenants_in_apt.find{|tenant| tenant.get_name ==  tenant_name}
        tenant_to_remove.set_apartment_id(nil)
        puts "#{tenant_name} has been removed to the apartment"
      end
    end
    # binding.pry
  elsif answer == "4"
    ruby_tenants.each_with_index do |tenant, i|
      spaces = " " * (30 - tenant.get_name.length)
      apartment_with_tenant = ruby_apartments.find{ |apartment| apartment.get_id == tenant.get_apartment_id }
      puts "#{i+1}. #{tenant.get_name} #{spaces} #{apartment_with_tenant.get_address}"
    end
  elsif answer == "5"
    puts "What is the address of the apartment?"
    address = gets.chomp
    puts "What is the monthly rent of an apartment?"
    monthly_rent = gets.chomp
    puts "What is the square feet of an apartment?"
    square_feet = gets.chomp
    ruby_apartments << apartment_to_add = Apartment.new(ruby_apartments.last.get_id + 1, address, monthly_rent, square_feet)
elsif answer == "6"
  puts "What is the name of the tenant?"
  name = gets.chomp
  puts "What is the age of the tenant?"
  age = gets.chomp
  puts "What is the apartment_id of the tenant?"
  apartment_id = gets.chomp
  ruby_tenants << tenant_to_add = Tenant.new(ruby_tenants.last.get_id + 1, name, age, apartment_id)
end
end
  # elsif answer == "5"
    # ruby_tenants.



  ## More challenging
  # When printing ruby_tenants also print out the address that the tenant resides in.
  # When printing all ruby_apartments, under each apartment print all of its ruby_tenants
