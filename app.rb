require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured

      # MY ANSWER #
      # There are two separate arrays, apartments and tenants, with hashes
      # containing properties of each individual renter and unit.

  # What are the properties for each of the two types of hashes

    # Apartments: id, address, monthly_rent, square_feet
    # Tenants: id, name, age, apartment_id
    # The apartment and tenant id fields link the apartment_id field to
    # the specific apartments.

# Use enumerables to -
  # Print all the addresses for the apartments

    # apartments.each do |unit|
    #   puts unit[:address]
    # end

  # Print all the names for tenants

    # tenants.each do |renter|
    #   puts renter[:name]
    # end

  # Print only apartments that are less then 700 in rent

    # apartments.each do |unit|
    #   if unit[:monthly_rent] < 700
    #     puts unit
    #   end
    # end

  # Print only tenants that are over the age of 44

    # tenants.each do |renter|
    #   if renter[:age] > 44
    #     puts renter
    #   end
    # end

  # Print only tenants that have an apartment id of 1

    # tenants.each do |renter|
    #   if renter[:apartment_id] == 1
    #     puts renter
    #   end
    # end

  # Print all the tenants in order from youngest to oldest

    # sorted_tenants = tenants.sort_by{|renter| renter[:age]}
    # puts sorted_tenants

  # Print the names of all the tenants alphabetically

    # sorted_tenants = []
    # sorted_tenants = tenants.sort_by!{|renter| renter[:name]}
    # for renter in sorted_tenants
    #   puts renter[:name]
    # end

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.

    # sorted_tenants = []
    # sorted_tenants = tenants.sort_by!{|renter| renter[:name]}
    # for renter in sorted_tenants
    #   puts renter[:name]
    #   puts apartments[renter[:apartment_id]-1][:address]
    # end

  # When printing all apartments, under each apartment print all of its tenants

    # for unit in apartments
    #   puts unit
    #   for renter in tenants
    #     if unit[:id] == renter[:apartment_id]
    #       puts renter[:name]
    #     end
    #   end
    # end

# Listing command line options for Mr. Pizza (while allows restart for multiple uses)
i = 0
puts "Hello, Mr. Pizza. What function do you need to perform today (enter #1-7)?"
while i == 0
  puts "1. View all apartments"
  puts "2. View all tenants"
  puts "3. View a list of tenants for each apartment"
  puts "4. Find tenant's address by tenant name"
  puts "5. Remove a tenant from an apartment"
  puts "6. Add tenant to an apartment"
  puts "7. Create a new apartment"

  # Ensuring his choice is an option
  pizza_choice = gets.chomp.to_i
  if pizza_choice < 1 || pizza_choice > 7
    puts "Sorry, Mr. Pizza, but that selection is invalid.  Please try again (1-7):"
    pizza_choice = gets.chomp.to_i
  end

  # Option 1 - All Apartments
  if pizza_choice == 1
    apartments.each do |unit|
      puts unit
    end
  end
  puts "Would you like to do something else? (y/n)"
  pizza_response = gets.chomp.to_s.downcase
  if pizza_response == 'y'
    puts "What function do you need to perform today (enter #1-7)?"
  else
    puts "Have a great day!"
    i += 1
  end

  # Option 2 - All Tenants
  if pizza_choice == 2
    tenants.each do |renter|
      puts renter
    end
  end
  puts "Would you like to do something else? (y/n)"
  pizza_response = gets.chomp.to_s.downcase
  if pizza_response == 'y'
    puts "What function do you need to perform today (enter #1-7)?"
  else
    puts "Have a great day!"
    i += 1
  end

  # Option 3 - Tenants Per Apartment
  if pizza_choice == 3
    for unit in apartments
      puts unit
      for renter in tenants
        if unit[:id] == renter[:apartment_id]
          puts renter[:name]
        end
      end
    end
  end
  puts "Would you like to do something else? (y/n)"
  pizza_response = gets.chomp.to_s.downcase
  if pizza_response == 'y'
    puts "What function do you need to perform today (enter #1-7)?"
  else
    puts "Have a great day!"
    i += 1
  end

  # Option 4 - Tenant's Address By Name.
  if pizza_choice == 4
    puts "Which tenant would you like to look up?  Please type in at least the first seven characters, including spaces."
    tenant_name = gets.chomp.to_s
    x = 0
    for renter in tenants
      if renter[:name][0..6] == tenant_name[0..6]
        puts "You requested #{renter[:name]}'s address.  The address is:"
        puts "#{apartment[renter[:apartment_id]-1][:address]}"
        x += 1
      end
    end
    if x == 0
      puts "No tenants matched what you typed.  Please try again from the main menu."
    end
  end
  puts "Would you like to do something else? (y/n)"
  pizza_response = gets.chomp.to_s.downcase
  if pizza_response == 'y'
    puts "What function do you need to perform today (enter #1-7)?"
  else
    puts "Have a great day!"
    i += 1
  end

  # Option 5 - Remove Tenant
  if pizza_choice == 5
    puts "Which tenant would you like to remove?"
    remove = gets.chomp.to_s
    x = 0
    for renter in tenants
      if renter[:name][0..6] == remove[0..6]
        puts "You are removing #{renter[:name]}."
        tenants.delete(renter)
        x += 1
      end
    end
    if x == 0
      puts "No tenants matched what you typed.  Please try again from the main menu."
    end
  end
  puts "Would you like to do something else? (y/n)"
  pizza_response = gets.chomp.to_s.downcase
  if pizza_response == 'y'
    puts "What function do you need to perform today (enter #1-7)?"
  else
    puts "Have a great day!"
    i += 1
  end

  # Option 6 - Add Tenant
  if pizza_choice == 6
    tenant_name = ''
    tenant_age = 0
    unit_id = 0
    renter_id = 0
    puts "What is the tenant's name?"
    tenant_name = gets.chomp.to_s
    puts "How old is the tenant?"
    tenant_age = gets.chomp.to_i
    puts "What is the ID for their apartment?"
    unit_id = gets.chomp.to_i
    renter_id = tenants.length + 1
    tenants << {id: renter_id, name: tenant_name, age: tenant_age, apartment_id: unit_id}
    puts "You have added #{tenant_name}, age #{age}, to apartment #{apartment_id}.  The tenant ID is #{renter_id}."
  end
  puts "Would you like to do something else? (y/n)"
  pizza_response = gets.chomp.to_s.downcase
  if pizza_response == 'y'
    puts "What function do you need to perform today (enter #1-7)?"
  else
    puts "Have a great day!"
    i += 1
  end

  # Option 7 - Create Apartment
  if pizza_choice == 7
    unit_id = 0
    location = ''
    rent = 0
    size = 0
    puts "What is the apartment address?"
    location = gets.chomp.to_s
    puts "What is the monthly rent (no $, numbers only)?"
    rent = gets.chomp.to_i
    puts "What is the square footage?"
    size = gets.chomp.to_i
    unit_id = apartments.length + 1
    apartments << {id: unit_id, address: location, monthly_rent: rent, square_feet: size}
    puts "You have added unit #{unit_id} at #{location}, which is #{size} square feet and costs $#{rent} per month."
  end
  puts "Would you like to do something else? (y/n)"
  pizza_response = gets.chomp.to_s.downcase
  if pizza_response == 'y'
    puts "What function do you need to perform today (enter #1-7)?"
  else
    puts "Have a great day!"
    i += 1
  end
end
