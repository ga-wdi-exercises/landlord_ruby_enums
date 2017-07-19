require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]
require_relative "models/apartment"
require_relative "models/tenant"

=begin

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes

# Use enumerables to -
  puts "Print all the addresses for the apartments"
  apartments.each do |apt|
    puts apt[:address] + ": "
    id = apt[:id]
    tenants.each do |person|
      if person[:apartment_id] == id
        puts "   " + person[:name]
      end
    end
  end
  puts " "
  puts "Print all the names for tenants"
  tenants.each do |person|
    print person[:name] + ": "
    id = person[:apartment_id]
    apt_match = apartments.find_all {|apt| apt[:id] == id}
    apt_match.each do |apt|
      puts apt[:address]
    end
  end
  puts " "
  puts "Print only apartments that are less then 700 in rent"
  cheap_apts = apartments.find_all { |apt| apt[:monthly_rent] < 700 }
    cheap_apts.each do |apt|
      puts apt[:address] + ": "
      id = apt[:id]
      tenants.each do |person|
        if person[:apartment_id] == id
          puts "   " + person[:name]
        end
      end
    end
  puts " "
  puts "Print only tenants that are over the age of 44"
  tenants.each do |person|
    if person[:age] > 44
      print person[:name] + ": "
      id = person[:apartment_id]
      puts apartments[id - 1][:address]
    end
  end
  puts " "
  puts "Print only tenants that have an apartment id of 1"
  tenants.each do |person|
    if person[:apartment_id] == 1
      print person[:name] + ": "
      id = person[:apartment_id]
      puts apartments[id - 1][:address]
    end
  end
  puts " "
  puts "Print all the tenants in order from youngest to oldest"
  tenants_age_sort = tenants.sort_by {|person| person[:age]}
  tenants_age_sort.each do |person|
    print person[:name] + ": "
    id = person[:apartment_id]
    puts apartments[id - 1][:address]
  end
  puts " "
  puts "Print the names of all the tenants alphabetically"
  tenants_name_sort = tenants.sort_by {|person| person[:name]}
  tenants_name_sort.each do |person|
    print person[:name] + ": "
    id = person[:apartment_id]
    puts apartments[id - 1][:address]
  end
  puts " "
  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.  -- Check
  # When printing all apartments, under each apartment print all of its tenants  -- Check

=end

run = true

while run do

  puts " "
  puts "*************************************"
  puts "Welcome Bob Pizza"
  puts "Please Make your Selection"
  puts "1 ==> View all apartments"
  puts "2 ==> View all tenants"
  puts "3 ==> View apartments with their tenants"
  puts "4 ==> Find apartment address from tenant's name"
  puts "5 ==> Remove a tenant from an apartment"
  puts "6 ==> Add a tenant to an apartment"
  puts "7 ==> Create a new apartment"
  puts "8 ==> Create a new tenant"
  puts "0 ==> Exit Program"

  input = gets.chomp.to_i

  if input == 1
    puts "Printing out apartment data..."
    apartments.each do |apt|
      puts "Address: #{apt[:address]}, Rent: #{apt[:monthly_rent]}, Sq Ft: #{apt[:square_feet]}"
    end

  elsif input == 2
    puts "Printing out tenant data..."
    tenants.each do |person|
      puts person[:name]
    end

  elsif input == 3
    puts "Printing out apartments with tenants..."
    apartments.each do |apt|
      puts apt[:address] + ": "
      id = apt[:id]
      match = tenants.find_all { |person| person[:apartment_id] == id}
        match.each do |person|
          puts "   " + person[:name]
        end
    end

  elsif input == 4
    print "Please enter the name of the tenant for who you would like the address of..."
    tenant_search = gets.chomp
    tenant_found = tenants.find {|person| person[:name] == tenant_search}
    if tenant_found
      apt_search = apartments.find {|apt| apt[:id] == tenant_found[:apartment_id]}
      if apt_search
        puts "#{tenant_search}'s address is #{apt_search[:address]}"
      else
        puts "#{tenant_search} does not live at one of your apartments"
      end
    else
      puts "#{tenant_search} not found"
    end

  elsif input == 5
    puts "Please enter the name of the tenant you would like to evict..."
    tenant_search = gets.chomp
    tenant_found = tenants.find {|person| person[:name] == tenant_search}
    if tenant_found
      apt_search = apartments.find {|apt| apt[:id] == tenant_found[:apartment_id]}
      puts "Are you sure you would like to remove #{tenant_search} from #{apt_search[:address]}?"
      confirmation = gets.chomp.upcase
      if confirmation == "YES"
        tenant_found[:apartment_id] = nil
        puts "#{tenant_search} no longer lives at #{apt_search[:address]}"
      end
    else
      puts "#{tenant_search} not found"
    end

  elsif input == 6
    puts "Please enter the name of the tenant you would like to add..."
    tenant_search = gets.chomp
    tenant_found = tenants.find {|person| person[:name] == tenant_search}
    if tenant_found
      puts "Please enter the new address of where you would like #{tenant_search} to live (You must be percise!)"
      address_input = gets.chomp
      new_apt = apartments.find {|apt| apt[:address] == address_input}
      if new_apt
        new_apt_id = new_apt[:id]
        tenant_found[:apartment_id] = new_apt_id
        puts "#{tenant_search} has been added to #{new_apt[:address]}"
      else
        puts "You do not own that apartment, you must own the apartment to add the tenant"
      end
    else
      puts "#{tenant_search} not found"
    end

  elsif input == 7
    puts "Creating new apartment..."
    puts "Please enter address"
    address = gets.chomp
    puts "Please enter montly rent"
    rent = gets.chomp
    puts "Please enter square feet"
    sq_ft = gets.chomp
    apartments.push({:id => apartments.last[:id] + 1, :address => address, :monthly_rent => rent, :square_feet => sq_ft})
    puts "Your new apartment has been created"

  elsif input == 8
    puts "Creating new tenant..."
    puts "Please enter name"
    name = gets.chomp
    puts "Please enter age"
    age = gets.chomp
    tenants.push({:id => tenants.last[:apartment_id] + 1, :name => name, :age => age})
    puts "Your new tenant has been created"

  elsif input == 0
      run = false
  end
end
