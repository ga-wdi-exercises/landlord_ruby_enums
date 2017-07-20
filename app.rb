require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
apartments = data[:apartments]
tenants = data[:tenants]
ruby_apartments = []
ruby_tenants = []

ruby_apartments = apartments.map {|a| Apartment.new(a[:id], a[:address], a[:monthly_rent], a[:square_feet])}
ruby_tenants = tenants.map{|t| Tenant.new(t[:id], t[:name], t[:age], t[:apartment_id])}

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes
# *** COMPLETE in data.rb ***

# Use enumerables to do the following tasks.
  # *** COMPLETE ***
  # converted enumberables to use getter methods from classes
menu_options = "1. PROPERTY OVERVIEW - View all apartments\n2. TENANT OVERVIEW - View all tenants\n3. OCCUPANCY OVERVIEW - View who lives where\n4. UPDATE RECORDS - Add or remove a tenant\n5. NEW RECORD - Create new apartment or tenant\n6. FILTER BY PRICE - Find apartments that meet your budget\n7. FILTER BY SQ FT - Find apartments with enough space \n8. TENANT ADDRESS BOOK - Sorted alphabetically\n9. EMERGENCY CONTACT INFO - Look up tenant address by name\n0. EXIT"
line_break = "-----------------------------------------------------"
open = true
while open do
  puts line_break
  puts "--------------- Welcome Back, Landlord! -------------\n Type a number to select from the available options:"
  puts line_break
  puts menu_options
  input = gets.chomp.to_i
  if input == 1
    #Print all the addresses for the apartments
    puts "---------------- APARTMENT LOCATIONS ----------------"
    puts line_break
    ruby_apartments.each do |apt|
      puts "Apt \##{apt.id}: #{apt.address}"
    end
  elsif  input == 2
    # Print all the names for tenants
    puts "-------------------- ALL TENANTS --------------------"
    puts line_break
    puts "Would you like to see your tenants sorted alphabetically (ALPHA) or in numerical order based on id (ID)?"
    sort_pref = gets.chomp.to_s
    if sort_pref.upcase == "ALPHA"
      ruby_tenants_alphasort = ruby_tenants.sort_by{|tenant| tenant.name}
      ruby_tenants_alphasort.each do |ten|
        puts "#{ten.name} is Tenant \##{ten.id}"
      end
    elsif sort_pref.upcase == "ID"
      ruby_tenants.each do |ten|
        puts "Tenant \##{ten.id}: #{ten.name}"
      end
    else
      puts "Unrecognized input."
    end
  elsif input == 3
    puts "---------------- APARTMENT OCCUPANCY ----------------"
    puts line_break
    # When printing all ruby_apartments, under each apartment print all of its tenants
    ruby_apartments.each do |apt|
      apt_id = apt.id
      apt_tenants = ruby_tenants.find_all{|ten| ten.apartment_id == apt_id}
      ten_names = apt_tenants.map{|t| t.name}
      if ten_names.length >=1
        ten_names = ten_names.join(', ')
        puts "Apartment \##{apt.id} at #{apt.address} is occupied by:\n #{ten_names}\n\n"
      else
        puts "!!!! Apartment \##{apt.id} at #{apt.address} is VACANT !!!!\n\n"
      end
    end
  elsif input == 4
    puts "------------------- UPDATE RECORDS ------------------"
    puts line_break
    # Add or remove a tenant
    puts "Would you like to ADD or REMOVE a tenant from an apartment? \n"
    records_input = gets.chomp.upcase
    if records_input == "ADD"
      puts "Great, please enter the name of the tenant you would like to add."
      new_tenant = gets.chomp.to_s
      found_tenant = ruby_tenants.find{|ten| ten.name.downcase == new_tenant.downcase}
      if found_tenant
        puts "It looks like that tenant is currently living in Apartment \##{found_tenant.apartment_id}\n\nIf you want to move them to a new apartment, please enter the new apartment ID number."
        new_apt_id = gets.chomp.to_i
        new_apt = ruby_apartments.find{|apt| apt.id == new_apt_id}
        if new_apt
          found_tenant.apartment_id = new_apt_id
          puts "Complete. #{found_tenant.name} has been added to Apartment \##{new_apt.id} at #{new_apt.address}"
        else
          puts "Sorry, that is not a valid apartment ID. Please try again."
          new_apt_id = gets.chomp.to_i
        end
      else
        puts "#{new_tenant} is not a tenant yet. You need to create a NEW RECORD before you can add them to an apartment."
      end
    elsif records_input == "REMOVE"
      puts "Okay, please enter the name of the tenant you would like to remove."
      remove_tenant = gets.chomp.to_s
      found_tenant = ruby_tenants.find{|ten| ten.name.downcase == remove_tenant.downcase}
      if found_tenant
        apt_find = ruby_apartments.find{|apt| apt.id = found_tenant.apartment_id}
        puts "It looks like #{remove_tenant} is currently living in Apartment \##{apt_find.id} at #{apt_find.address}.\n\nPlease type REMOVE once more to confirm the deletion."
        response = gets.chomp.to_s.upcase
        if response == "REMOVE"
          found_tenant.apartment_id = nil
          puts "Complete. #{remove_tenant} no longer lives at #{apt_find.address}"
        else
          puts "Unrecognized input. Did not remove #{remove_tenant}."
        end
      else
        puts "Sorry, #{remove_tenant} not found."
      end
    else
      puts "Unrecognized input. Please try again."
    end
  elsif input == 5
    # Create new apartment or tenant
    puts "--------------------- NEW RECORD --------------------"
    puts line_break
    puts "Would you like to create a new APARTMENT or TENANT?"
    choice = gets.chomp.to_s
    if choice.upcase == "APARTMENT"
      puts "Okay, a new apartment. Please enter the new address:"
      address = gets.chomp.to_s
      puts "Thank you, how many square feet is this apartment?"
      square_feet = gets.chomp.to_i
      puts "Excellent. Last question - how much is the monthly rent at this property?"
      monthly_rent = gets.chomp.to_i
      ruby_apartments.push(Apartment.new(ruby_apartments.last.id+1, address, square_feet, monthly_rent))
      puts "Complete. Your new apartment has been created at #{address}."
    elsif choice.upcase == "TENANT"
      puts "Okay, a new tenant. Please enter the new tenant\'s name."
      name = gets.chomp.to_s
      puts "Thank you, and what is their age?"
      age = gets.chomp.to_i
      ruby_tenants.push(Tenant.new(ruby_tenants.last.id+1, name, age, nil))
      puts "Complete. Your new tenant, #{name}, has been created. Don't forget to UPDATE RECORDS and add them to an apartment."
    else
      puts "Unrecognized input. Please try again."
    end
  elsif input == 6
    # Print only apts in budget
    puts "------------------- FILTER BY PRICE -----------------"
    puts line_break
    puts "We've got something for almost every budget. Please enter your maximum monthly rent."
    max_rent = gets.chomp.to_i
    affordable_apts = ruby_apartments.find_all{|i| i if i.monthly_rent < max_rent}
    if affordable_apts.length >=1
      puts "The following apartments are in your budget:"
      affordable_apts.each do |apt|
        puts "#{apt.address}, which is #{apt.square_feet} sq ft and costs $#{apt.monthly_rent} each month."
      end
    else
      puts "Unfortunately, we don't have anything in our inventory within your budget."
    end
  elsif input == 7
    puts "------------------- FILTER BY SQ FT -----------------"
    puts line_break
    # Print only ruby_apartments that meet the space needs
    puts "How much space do you need? Please enter a minimum number of square feet."
    min_sqft = gets.chomp.to_i
    right_sized_apts = ruby_apartments.find_all{|i| i if i.square_feet > min_sqft}
    if right_sized_apts.length >=1
      puts "The following apartments meet your minimum space requirements:"
      right_sized_apts.each do |apt|
        puts "#{apt.address} is #{apt.square_feet} sq ft and costs $#{apt.monthly_rent} each month."
      end
    else
      puts "Unfortunately, we don't have properties that large in our inventory."
    end
  elsif input == 8
    # When printing ruby_tenants also print out the address that the tenant resides in.
    puts "---------------- TENANT ADDRESS BOOK ----------------"
    puts line_break
      tenants_alphasort = ruby_tenants.sort_by{|tenant| tenant.name}
      tenants_alphasort.each do |tenant|
        apartment_id = tenant.apartment_id
        apt_address = ruby_apartments.find{|apt| apt.id == apartment_id}
        puts "#{tenant.name}: #{apt_address.address} "
      end
  elsif input == 9
    # Find tenant address based on name for emergencies
    puts "----------------- EMERGENCY LOOKUP ------------------"
    puts line_break
    puts "Enter the name of the tenant you need to contact."
    name_input = gets.chomp
    lookup = ruby_tenants.find{|ten| ten.name.downcase == name_input.downcase}
    if lookup
      apartment_id = lookup.apartment_id
      apt_address = ruby_apartments.find{|apt| apt.id == apartment_id}
      puts "#{name_input} lives at #{apt_address.address}"
    else
      puts "Sorry, #{name_input} is not a tenant."
    end
  elsif input == 0
    puts "Shutting down. Have a great day!"
    open = false
  end
end
