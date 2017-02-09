require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # => Apartments have addresses, monthly rent, and sqft.
  # => Tenants have name, age, and apartment id.

# Use enumerables to -
  # Print all the addresses for the apartments
  apartments.each do |apartment|
    puts apartment.address
  end
  # Print all the names for tenants
  tenants.each do |tenant|
    puts tenant.name
  end
  # Print only apartments that are less then 700 in rent
  apartments.each do |apartment|
    puts (apartment.square_feet < 700) ? apartment.address : ""
  end
  # Print only tenants that are over the age of 44
  tenants.each do |tenant|
    puts (tenant.age > 44) ? tenant.name : ""
  end
  # Print only tenants that have an apartment id of 1
  tenants.each do |tenant|
    puts (tenant.apartment_id == 1) ? tenant.name : ""
  end
  # Print all the tenants in order from youngest to oldest
  tenants.sort_by do { |tenant| tenant.age }

  # Print the names of all the tenants alphabetically
  tenants.sort_by do { |tenant| tenant.name }

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  tenants.each do |tenant|
    apartments.each do |apartment|
      puts tenant.name
      if tenant.apartment_id == apartment.id
        puts apartment.address        
      end
    end
  end
  # When printing all apartments, under each apartment print all of its tenants
  apartments.each do |apartment|
    puts apartment.address
    tenants.each do |tenant|
      if tenant.apartment_id == apartment.id  
        puts tenant.name      
      end
    end
  end
