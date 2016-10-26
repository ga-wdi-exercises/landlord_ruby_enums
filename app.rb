require "pry"
require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes
    # array of hashes, id is primary key; in tenant table, apartment_id is foreign key

# Use enumerables to -
#   Print all the addresses for the apartments
apts = apartments.map{|apartment| apartment[:address]}
  # Print all the names for tenants
tnts = tenants.map {|tenant| tenant[:name]}
  # Print only apartments that are less then 700 in rent
apt_over_700 = apartments.select {|apartment| apartment[:monthly_rent] > 700}
  # Print only tenants that are over the age of 44
tnt_over_44 = tenants.select {|tnt| tnt[:age] > 44}
  # Print only tenants that have an apartment id of 1
tnt_apt_id_1 = tenants.select {|tnt| tnt[:apartment_id] == 1}
  # Print all the tenants in order from youngest to oldest
tnts_sort = tenants.sort_by {|tenant| tenant[:age]}
  # Print the names of all the tenants alphabetically
tnts_alpha = tenants.sort {|a, b| a[:name] <=> b[:name]}

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
# tenants.each do |tenant|
#   puts tenant[:name]
#   tenants_apartment = apartments.find{|apartment| apartment[:id] == tenant[:apartment_id]}
#   puts tenants_apartment[:address]
# end
  # When printing all apartments, under each apartment print all of its tenants
  def view_apartments apartments
    puts apartments
  end

  def view_tenants tenants
    puts tenants
  end

# USER STARTS HERE

puts "******************************************************\nWelcome to Bob Pizza's Propery Management Application!\n******************************************************\n\nPlease enter the values below to access the application: \n\n'1' - View apartment data \n'2' - View tenant data \n'3' - View list of apartments and their tenants\n'4' - View list of tenants and their apartment address \n'exit' - Exit"

entry = ""

while entry != "exit"
  entry = gets.chomp
  5.times do |i|
    puts "*" * i
    sleep 1.0/10.0
  end
  if entry == "1"
    view_apartments apartments
  elsif entry == "2"
    view_tenants tenants
  elsif entry == "3"
    apartments.each_with_index do |apartment, i|
      spaces = " " * (25 - apartment[:address].length)
      apartment_tenants = tenants.select{|tenant| tenant[:apartment_id] == apartment[:id]}
      puts "#{i+1} - #{apartment[:address]} #{spaces} #{apartment_tenants.map{|el| el[:name]}.join(", ")}"
    end
    apt_id = ""
    while apt_id != "exit"
      puts "Please enter an apartment ID to add or remove a tenant"
      apt_id = gets.chomp
        puts "test: #{apartments.find {|apartment| apartment[:id] == apt_id.to_i}}"
    end
  elsif entry == "4"
    tenants.each_with_index do |tenant, i|
      spaces = " " * (30 - tenant[:name].length)
      tenants_apartment = apartments.find{|apartment| apartment[:id] == tenant[:apartment_id]}
      puts "#{i+1} - #{tenant[:name]} #{spaces} #{tenants_apartment[:address]}"
    end
  end
end
