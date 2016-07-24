require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
require_relative "helpers/ui"
apartments = data[:apartments]
tenants = data[:tenants]

ruby_apartments = apartments.map do |apartment|
  Apartment.new(apartment[:id], apartment[:address], apartment[:monthly_rent], apartment[:square_feet])
end
ruby_tenants = tenants.map do |tenant|
  Tenant.new(tenant[:id], tenant[:name], tenant[:age], tenant[:apartment_id])
end
  # # First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
    # #   Explain how the data is structured
    # #   What are the properties for each of the two types of hashes
    #Data is inside a method that is made of two types of hashes. Apartment data is an array of hasses that have properties of id, address, monthly rent and sq ft. Tenant data is in an array of hashes with properties of id, name, age and apartment id.

  # Use enumerables to -
  # Print all the addresses for the apartments
    apartments.each do |apartment|
      puts apartment[:address]
    end

    ruby_apartments.each do |apartment|
      puts apartment.address
    end

  # Print all the names for tenants
    tenants.each do |tenant|
      puts tenant[:name]
    end

    ruby_tenants.each do |tenant|
      puts tenant.name
    end

  # Print only apartments that are less then 700 in rent
    low_apartments =apartments.select do |apartment|
      apartment[:monthly_rent]<700
    end
    puts low_apartments

    low_apartments=ruby_apartment.select do |apartment|
      apartment.monthly_rent<700
    end

  # Print only tenants that are over the age of 44
    old_tenants = tenants.select do |tenant|
      tenant[:age]>44
    end
    puts old_tenants

    old_tenants = ruby_tenants.select do |tenant|
      tenant.age>44
    end

  # Print only tenants that have an apartment id of 1
    apt_id_one = tenants.select do |tenant|
      tenant[:apartment_id]==1
    end
    puts apt_id_one

    apt_id_one = ruby_tenants.select do |tenant|
      tenant.apartment_id == 1
    end

  # Print all the tenants in order from youngest to oldest
    young_old = tenants.sort_by do |tenant|
      tenant[:age]
    end
    puts young_old

    young_old = ruby_tenants.sort_by do |tenant|
      tenant.age
    end

  # Print the names of all the tenants alphabetically
    alphabetical_tenants = tenants.sort do |a, b|
      a[:name].downcase <=> b[:name].downcase
    end
    puts alphabetical_tenants

    alphabetical_tenants = ruby_tenants.sort do |a, b|
      a.name.downcase <=> b.name.downcase
    end


  # More challenging
  # When printing tenants also print out the address that the tenant resides in.
    tenants.each do |tenant|
      puts tenant[:name]
      tenants_apartment = apartments.find{|apartment| apartment[:id] == tenant[:apartment_id]}
      puts tenants_apartment[:address]
    end

    ruby_tenant.each do |tenant|
      puts tenant.name
      tenants_apartment = ruby_apartments.find{|apartment| apartment_id == tenant.apartment_id}
      puts tenants_apartment.name
    end

  # When printing all apartments, under each apartment print all of its tenants
    apartments.each do |apartment|
      puts apartment[:address]
      tenants_of_apartment = tenants.select{|tenant| tenant[:apartment_id] == apartment[:id]}
      tenants_of_apartment.each do |tenant|
        puts tenant[:name]
      end
    end

    ruby_apartments.each do |apartment|
      puts ruby_apartments.address
      tenants_of_apartment=ruby_tenants.select {|tenant|
      tenant.apartment_id == apartment.id}
      tenants_of_apartment.each do |tenant|
        puts tenant.name
      end
    end

# - I should have a numbered interface for my application so that I can just type in a number to access different parts of my program.
def welcome
  puts "Welcome, Landlord!"
  puts "What would you like to do?"
  puts "Press 1 if you'd like to see your properties."
  puts "Press 2 if you'd like to see your tenants"
  puts "Press 3 if you'd like to see both"
  puts "Press 4 if you'd like to exit the program."
  gets.chomp
end

puts welcome
input=welcome
while input !="4"
  if input =="1"
    puts "Apartments"
    app_apartments.each do |apartment|
      puts apartment.address
    end
    puts "Hit <enter> to continue"
  elsif input=="2"
    puts "Tenants"
    app_tenants.each do |tenant|
      puts tenant.name
    end
    puts "Hit <enter> to continue"
  elsif input =="3"
    ruby_apartments.each do |apartment|
      puts apartment.address
      puts "Residents:"
      apartment_tenants = ruby_tenants.select{|tenant| tenant.apartment_id == apartment.id}
      puts "No occupants" if apartment_tenants.length == 0
      apartment_tenants.each{|tenant| puts tenant.name}
    end
  else
  end
  gets.chomp
  puts input
  input=welcome
end





welcome




#
# - I should be allowed an option to view all the apartments so that I can get an overview of my properties.
# apartments.each do |apartment|
#   puts apartments.all
# end
#
# - I should be allowed  an option view all the tenants so that I can get an overview of my tenants
# tenants.each do |tenant|
#   puts tenants.all
# end
