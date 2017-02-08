require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
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
####ANSWER v
# The data is organized into two tables : apartments and tenants - both of which are connected by the apartment IDs. Apartment properties are id, address, rent and size. Tenant properties are id, name, age, and apartment id.

# Use enumerables to -
  # Print all the addresses for the apartments
  # apartments.each do |apartment|
  #     puts apartment[:address]
  # end
  # Print all the names for tenants
  # tenants.each do |tenant|
  #     puts tenant[:name]
  # end
  # Print only apartments that are less then 700 in rent
  # cheap_apt = apartments.select do |apartment|
  #     apartment[:monthly_rent] < 700
  # end
  #   puts cheap_apt
  # Print only tenants that are over the age of 44
  # over_fourty = tenants.select do |tenant|
  #     apartment[:age] > 44
  # end
  #   puts over_fourty
  # Print only tenants that have an apartment id of 1
  # apartment_one_tenants = tenants.select do |tenant|
  #     tenant[:apartment_id] == 1
  # end
  # puts apartment_one_tenants
  # Print all the tenants in order from youngest to oldest
  # tenants_age_asc = tenants.sort_by do |a, b|
  #   tenant[:age]
  # end
  # Print the names of all the tenants alphabetically
# tenants_alpha = tenants.sort_by do |a, b|
#   a[:name].downcase <=> b[:name].downcase
# end
  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # tenants.each do |tenant|
  #   puts tenant[:name]
  #   tenants_apt = apartments.find{|apartment| apartment[:id] == tenant[:apartment_id]}
  #   puts tenants_apt[:name]
  # end
  # When printing all apartments, under each apartment print all of its tenants
  ####################################################

  def wait
    puts "*" * 80
  end

  def menu
    puts "Please enter a number to begin or 'exit'"
    puts "1) View all Properties"
    puts "2) View all Tenants"
    puts "3) View overview of properties and their tenants"
    gets.chomp
  end


  system "clear"
  puts "Welcome to Allen Property Management"
  wait

menu_input = menu
while menu_input != "exit"
  if menu_input == "1"
    system "clear"
    puts "Your apartments:"
    ruby_apartments.each do |apartment|
      puts apartment.address
    end
    puts "Press ENTER to continue"

  elsif menu_input == "2"
    system "clear"
    puts "Your tenants:"
    ruby_tenants.each do |tenant|
      puts tenant.name
    end
    puts "Press ENTER to continue"
  elsif menu_input == "3"
    system "clear"
    puts "Your addresses: "
    ruby_apartments.each do |apartment|
      puts apartment.address
      puts "Residents:"
      apartment_tenants = ruby_tenants.select{|tenant| tenant.apartment_id == apartment.id}
        puts "No occupants" if apartment_tenants.length == 0
      apartment_tenants.each{|tenant| puts tenant.name}
        wait
    end
  puts "Press ENTER to continue"
end
gets.chomp
  system "clear"
  puts (menu_input)
  menu_input = menu
end
