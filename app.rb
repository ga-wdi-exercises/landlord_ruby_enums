require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb and inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes

# Use enumerables to -
  # Print all the addresses for the apartments

  apartments.each do |apt|
    apt_id = apt[:id]
    puts "The residents of #{apt[:address]}:"
    tenants.each do |ten|
      if ten[:apartment_id] == apt_id
        puts "#{ten[:name]}"
      end
    end
    # ten_id = tenants.find { |ten| ten[:apartment_id] == apt_id}
    # puts "#{ten_id[:name]} lives at #{apt[:address]}."
  end
  # Print all the names for tenants
  tenants.each do |ten|
    apartment_id = ten[:apartment_id]
    apartment = apartments.find { |apt| apt[:id] == apartment_id}
    puts "#{ten[:name]} lives at #{apartment[:address]}."
  end
  # Print only apartments that are less then 700 in rent
  puts "Under 700 a month ------------"
  apartments.each do |apt|
    if apt[:monthly_rent] < 700
      apt_id = apt[:id]
      puts "The residents of #{apt[:address]}:"
      tenants.each do |ten|
        if ten[:apartment_id] == apt_id
          puts "#{ten[:name]}"
        end
      end
    # ten_id = tenants.find { |ten| ten[:apartment_id] == apt_id}
    # puts "#{ten_id[:name]} lives at #{apt[:address]}."
    end
  end
  # apartments.each do |apt|
  #   if apt[:monthly_rent] < 700
  #     puts apt[:id]
  #   end
  # end
  # Print only tenants that are over the age of 44
  puts "Older than 44 ------------"
  tenants.each do |ten|
    if ten[:age] > 44
      apartment_id = ten[:apartment_id]
      apartment = apartments.find { |apt| apt[:id] == apartment_id}
      puts "#{ten[:name]} lives at #{apartment[:address]}."
    end
  end
  # Print only tenants that have an apartment id of 1
  puts "At apt Id 1 ------------"
  tenants.each do |ten|
    if ten[:apartment_id] == 1
      apartment_id = ten[:apartment_id]
      apartment = apartments.find { |apt| apt[:id] == apartment_id}
      puts "#{ten[:name]} lives at #{apartment[:address]}."
    end
  end
  # Print all the tenants in order from youngest to oldest
  puts "Youngest to oldest ------------"
  sorted = tenants.sort_by { |ten| ten[:age] }
  sorted.each do |ten|
    apartment_id = ten[:apartment_id]
    apartment = apartments.find { |apt| apt[:id] == apartment_id}
    puts "#{ten[:name]} is #{ten[:age]} years old and lives at #{apartment[:address]}."
  end
  # Print the names of all the tenants alphabetically
  puts "alphabetically ----------"
  sorted = tenants.sort_by { |ten| ten[:name] }
  sorted.each do |ten|
    puts ten[:name]
  end
  # More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # puts "tenants and their addresses --------"
  # tenants.each do |ten|
  #   apartment_id = ten[:apartment_id]
  #   apartment = apartments.find { |apt| apt[:id] == apartment_id}
  #   puts "#{ten[:name]} lives at #{apartment[:address]}."
  # end
  # When printing all apartments, under each apartment print all of its tenants
