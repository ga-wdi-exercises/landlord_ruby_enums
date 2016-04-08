require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
    #Data is systematically structured with two primary categories. These categories are given a unique id that allows for uniformed access.
    # Within these primarty catergories are subcategories that can serve as unique identifiers for even more precise data access.

  # What are the properties for each of the two types of hashes
    # The propreties for the apartments hash type are: ID, address, monthly_rent, and square_feet. Properties for the tenants has type are:
    # name, age, and apartment_id.

# Use enumerables to -
  # Print all the addresses for the apartments
  # apartments.each do |apartment|
  #   puts apartment[:address]
  # end

  # Print all the names for tenants
  # tenants.each do |tenant|
  #   puts tenant[:name]
  # end

  # Print only apartments that are less then 700 in rent
  # cheap_apartments = apartments.select do |apartment|
  #   apartment[:monthly_rent] < 700
  # end
  # puts cheap_apartments

  # Print only tenants that are over the age of 44
  # old_tenants = tenants.select do |tenant|
  #   tenant[:age] > 44
  # end
  # puts old_tenants

  # Print only tenants that have an apartment id of 1
    # tenants_id = tenants.select do |tenant|
    #   tenant[:apartment_id] == 1
    # end
    # puts tenants_id

  # Print all the tenants in order from youngest to oldest
    # tenants_order_by_age = tenants.sort_by do |tenant|
    #   tenant[:age]
    # end
    # puts tenants_order_by_age

  # Print the names of all the tenants alphabetically
    # tenants_alpha = tenants.sort_by do |tenant|
    #   tenant[:name].downcase
    # end
    # puts tenants_alpha

  ## More challenging
  # When printing all apartments, under each apartment print all of its tenants
  apt_ten = []
  puts "What is your name?"
  name = gets.chomp
  puts "OK I recognize that name. Welcome back " + name + "!"
  puts "Please choose one of the following options:"
    puts "1. Overview of all apartments"
    puts "2. Overiview of all tenants"
    puts "3. Overview of apartment occupancy"

  choice = nil

  while ![1, 2, 3].include? choice
    choice = (gets.chomp).to_i
  end

case choice
  when 1
  puts "All Apartments"
    apartments.each do |apartment|
      puts apartment
    end

  when 2
    puts "All Tenants"
      tenants.each do |tenant|
        puts tenant
      end

  when 3
    puts "Apartments Occupancies"
    apartments.each do |apartment|
      tenant_name = tenants.select do |tenant|
        tenant[:name]
          apt_ten << [apartment, tenant_name]
        end
        puts apt_ten
      end



end
