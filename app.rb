require_relative "data"
require_relative "models/tenant"
require_relative "helpers/ui"
require_relative "models/apartment"
apartments = data[:apartments]
tenants = data[:tenants]

ruby_apartments = apartments.map do |apartment|
  Apartment.new(apartment[:id], apartment[:address], apartment[:monthly_rent], apartment[:square_feet])
end

ruby_tenants = tenants.map do |tenant|
  Tenant.new(tenant[:id], tenant[:name], tenant[:age], tenant[:apartment_id])
end

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured

  # What are the properties for each of the two types of hashes


# Use enumerables to -

#warm-up
#get the first apartment
# puts apartment[0]
# get square foot of first apartment
# apartment[0][:square_feet][0]

  # Print all the addresses for the apartments
# apartments.each do |apartment|
#   apartments[:address]
# end
# puts address.inspect


  # Print all the names for tenants
# tenants.each do |tenant|
#   puts tenants[:name]
# end

  # Print only apartments that are less then 700 in rent
  # Cheap_apartments equals the monthly_rent that will be selected in the apartments. Print the apartments with monthy rents of less than 700. Show the length of the cheap_apartments. Exit the program.
# cheap_apartments = apartments.select do |monthly_rent|
#  puts apartments[:monthly_rent] < 700
#  cheap_apartments.lengths
# end

  # Print only tenants that are over the age of 44
  # Older_tenants represents tentants with the apartment_id of 2 that will be selected by tenants. Print older_tenants.
# older_tenants = tenants.select { |tenant| tenant[:apartment_id] = 2 }
#   puts older_tenants
#   puts "*" * 50
#   puts tenants


  # Print only tenants that have an apartment id of 1
# apartment_one = tenants.select do |tenant|
#   tenant[:apartment_id] == 1
# end
# puts apartment_1

  # Print all the tenants in order from youngest to oldest
  #Call on Tenants to be sorted in a specific order by age. Do it. Print tentants by age.
# age_tenants = tenants.sort_by do |tenant|
#    tenant[:age]
# end
# puts age_tenants

  # Print the names of all the tenants alphabetically
# tenant_name = tenants.sort_by do |name|
#   tenants[:name]
# end
# puts tenant_name

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
# tenants = each.do |tenant|
#   puts tenant
# tenant_apartment = apartments.find {|apartment| apartment[:id] == tenant[:apartment_id]}
#   puts tenants_apartment[]:name]
# puts
#
# end}



  # When printing all apartments, under each apartment print all of its tenants


  # - I should have a numbered interface for my application so that I can just type in a number to access different parts of my program.
  # - I should be allowed an option to view all the apartments so that I can get an overview of my properties.
  # - I should be allowed  an option view all the tenants so that I can get an overview of my tenants

  # Inspect data.rb: What are the property types for both hashes? Data structure??
# input = gets.chomp

  # Use input to inquire unit id to create and view a new array (.map).
# if input == "1"
# apartments.map do |unit|
#   puts unit
#   end
# end

# Do the same thing for tenants.
# if input == "2"
# tenants.map do |person|
#   puts person
#   end
# end


# App Logic - check out `helpers/ui.rb` for any methods being use that aren't defined in this file
system "clear"
puts "Welcome to Landlord!"
buffer
main_input = menu
while main_input != "exit"
  # Lists all addresses
  if main_input == "1"
    system "clear"
    puts "Heres a list of apartments you own!"
    ruby_apartments.each do |apartment|
      puts apartment.address
    end
    puts "Hit <enter> to continue"
  # Lists all addresses - Over View
  # Lists all tenants
  elsif main_input == "2"
    system "clear"
    puts "Heres a list of tenants you rent to!"
    ruby_tenants.each do |tenant|
      puts tenant.name
    end
    puts "Hit <enter> to continue"
  # Lists all addresses - Over View
  elsif main_input == "3"
    system "clear"
    puts "Heres a list of addresses you own!"
    ruby_apartments.each do |apartment|
      puts apartment.address
      puts "Residents:"
      apartment_tenants = ruby_tenants.select{|tenant| tenant.apartment_id == apartment.id}
      puts "No occupants" if apartment_tenants.length == 0
      apartment_tenants.each{|tenant| puts tenant.name}
      buffer
    end
    puts "Hit <enter> to continue"
  end
  gets.chomp
  system "clear"
  puts (main_input)
  main_input = menu
end
