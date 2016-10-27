require "pry"
require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"

apartments = data[:apartments]
tenants = data[:tenants]
ruby_apartments = []
ruby_tenants = []

apartments.each do |apartment|
   ruby_apartments << Apartment.new(apartment[:id], apartment[:address], apartment[:monthly_rent], apartment[:square_feet])
end

tenants.each do |tenant|
   ruby_tenants << Tenant.new(tenant[:id], tenant[:name], tenant[:age], tenant[:apartment_id])
end

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes
    # array of hashes, id is primary key; in tenant table, apartment_id is foreign key

# Use enumerables to -
#   Print all the addresses for the apartments
# apts = apartments.map{|apartment| apartment[:address]}
#   # Print all the names for tenants
# tnts = tenants.map {|tenant| tenant[:name]}
#   # Print only apartments that are less then 700 in rent
# apt_over_700 = apartments.select {|apartment| apartment[:monthly_rent] > 700}
#   # Print only tenants that are over the age of 44
# tnt_over_44 = tenants.select {|tnt| tnt[:age] > 44}
#   # Print only tenants that have an apartment id of 1
# tnt_apt_id_1 = tenants.select {|tnt| tnt[:apartment_id] == 1}
#   # Print all the tenants in order from youngest to oldest
# tnts_sort = tenants.sort_by {|tenant| tenant[:age]}
#   # Print the names of all the tenants alphabetically
# tnts_alpha = tenants.sort {|a, b| a[:name] <=> b[:name]}

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
# tenants.each do |tenant|
#   puts tenant[:name]
#   tenants_apartment = apartments.find{|apartment| apartment[:id] == tenant[:apartment_id]}
#   puts tenants_apartment[:address]
# end
  # When printing all apartments, under each apartment print all of its tenants
  def view_apartments ruby_apartments
    puts "Please find your apartments below:"
    ruby_apartments.each do |apt|
      puts apt.address
    end
  end

  def view_tenants ruby_tenants
    puts "Please find your tenants below:"
    ruby_tenants.each do |tnt|
      puts tnt.name
    end
  end

  def adjust_tenant ruby_apartments, ruby_tenants
    loop do
      puts "Please enter an apartment ID to add or remove a tenant (type 'back' to return to home screen)"
      apt_id = gets.chomp
      break if apt_id == "back"
      puts "Selected Apartment: #{ruby_apartments.find {|apartment| apartment.id == apt_id.to_i}.address}"
      # need to add functionality to add or remove a tenant from an apartment
      tenants_in_apt = ruby_tenants.select {|tnt| tnt.apartment_id == apt_id.to_i}
      puts "The following tenants live in that apartment: \n#{tenants_in_apt.map{|tenant| tenant.name}.join(", ")}"
      puts "Would you like to add or remove a tenant from this apartment (Type 'add' or 'remove')"
      add_remove = gets.chomp
      if add_remove == "remove"
        puts "Enter the full name of the tenant who you would like to remove from the apartment"
        tnt_remove = gets.chomp
        tnt_to_remove = tenants_in_apt.find{|tenant| tenant.name == tnt_remove}
        tnt_to_remove.apartment_id = nil
        puts "#{tnt_remove} has been removed from the apartment!"
      elsif add_remove =="add"
        puts "Enter the full name of the tenant who you would like to add to the apartment"
        tnt_add = gets.chomp
        tnt_to_add = ruby_tenants.find{|tenant| tenant.name == tnt_add}
        tnt_to_add.apartment_id = apt_id.to_i
        puts "#{tnt_add} has been added to the apartment!"
      end
    end
  end

  def add_apartment ruby_apartments
    lastid = ruby_apartments.last.id
    puts "What is the apartment address?"
    address = gets.chomp
    puts "What is the monthly rent?"
    rent = gets.chomp
    puts "What is the square footage?"
    sqft = gets.chomp
    ruby_apartments << Apartment.new(lastid + 1, address, rent, sqft)
    puts "Congrats! You've successfully added an apartment!"
  end

  def add_tenant ruby_tenants
    lastid = ruby_tenants.last.id
    puts "What is the tenant's full name?"
    name = gets.chomp
    puts "What is the tenant's age?"
    age = gets.chomp.to_i
    puts "What is the tenant's apartment ID?"
    apt_id = gets.chomp.to_i
    ruby_tenants << Tenant.new(lastid + 1, name, age, apt_id)
    puts "Congrats! You've successfully added a tenant!"
  end

# USER STARTS HERE
system "clear"
puts "******************************************************\nWelcome to Bob Pizza's Propery Management Application!\n******************************************************\n\nPlease enter the values below to access the application: \n\n'1' - View apartment data \n'2' - View tenant data \n'3' - View list of apartments and their tenants\n'4' - View list of tenants and their apartment address \n'5' - Create new apartment entry \n'6' - Create new tenant entry \n'exit' - Exit"

entry = ""

while entry != "exit"
  puts "\n*\n*\n*\nEnter feature number here:"
  entry = gets.chomp
  5.times do |i|
    puts "*" * i
    sleep 1.0/10.0
  end
  if entry == "1"
    system "clear"
    puts "************************\nOption 1: View Apartments!\n************************"
    view_apartments ruby_apartments
  elsif entry == "2"
    system "clear"
    puts "************************\nOption 2: View Tenants!\n************************"
    view_tenants ruby_tenants
  elsif entry == "3"
    system "clear"
    puts "************************\nOption 3: View/Adjust Tenants!\n************************"
    ruby_apartments.each_with_index do |apartment, i|
      spaces = " " * (25 - apartment.address.length)
      apartment_tenants = ruby_tenants.select{|tenant| tenant.apartment_id == apartment.id}
      puts "#{i+1} - #{apartment.address} #{spaces} #{apartment_tenants.map{|el| el.name}.join(", ")}"
    end
    adjust_tenant ruby_apartments, ruby_tenants
  elsif entry == "4"
    system "clear"
    puts "************************\nOption 4: View Tenants by Address!\n************************"
    ruby_tenants.each_with_index do |tenant, i|
      spaces = " " * (30 - tenant.name.length)
      tenants_apartment = ruby_apartments.find{|apartment| apartment.id == tenant.apartment_id}
      puts "#{i+1} - #{tenant.name} #{spaces} #{tenants_apartment.address}"
    end
  elsif entry == "5"
    system "clear"
    puts "************************\nOption 5: Add Apartment!\n************************"
    add_apartment ruby_apartments
  elsif entry == "6"
    system "clear"
    puts "************************\nOption 6: Add Tenant!\n************************"
    add_tenant ruby_tenants
  end
end
