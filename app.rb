require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  #    the data is in 2 arrays containing hashes for apartments and tenants sperately
  # What are the properties for each of the two types of hashes
  #    id,address,monthly_rent,square_feet for apartments
  #    id,name,age,apartment_id for tenants

# Use enumerables to -
  # Print all the addresses for the apartments
  apartments.each_with_index do |value, index|
    puts " #{value[:address]}"
  end
  # Print all the names for tenants
  tenants.each_with_index do |value, index|
    puts " #{value[:name]}"
  end
  # Print only apartments that are less then 700 in rent
  apartments.each_with_index do |value, index|
    if value[:monthly_rent] < 700
      puts " #{value}"
    end
  end
  # Print only tenants that are over the age of 44
  tenants.each_with_index do |value, index|
    if value[:age] > 44
      puts " #{value}"
    end
  end
  # Print only tenants that have an apartment id of 1
  tenants.each_with_index do |value, index|
    if value[:apartment_id] == 1
      puts " #{value}"
    end
  end
  # Print all the tenants in order from youngest to oldest
  puts tenants.sort_by { |x| x[:age] }
  # Print the names of all the tenants alphabetically
  puts tenants.sort_by {|x| x[:name]}

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants






  
