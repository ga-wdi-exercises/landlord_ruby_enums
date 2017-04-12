require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]


# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:

  # Explain how the data is structured
    #the data is structured into two arrays.  one array for apartments, and one array for tenants.
    #each array is then comprised of many hashes.


  # What are the properties for each of the two types of hashes
    #properties for the apartment hashes:
      #id, address, monthly rent, square feet
    #properties for the tenant hashes:
      #id, name, age, apartment id

# # Use enumerables to -
#   # Print all the addresses for the apartments
      ruby_apartments = apartments.each do |apartment|
        puts apartment[:address]
      end
#
#   # Print all the names for tenants
      ruby_tenants = tenants.each do |tenant|
        puts tenant[:name]
      end
#
#   # Print only apartments that are less then 700 in rent
      cheaper_apartments = apartments.each do |apartment|
        if(apartment[:monthly_rent] < 700)
        puts apartment[:id]
      end
      end



  # Print only tenants that are over the age of 44
    middle_aged = tenants.each do |tenant|
      if(tenant[:age] > 44)
        puts tenant[:name]
      end
    end



  # Print only tenants that have an apartment id of 1
    apartment_one = tenants.each do |tenant|
      if(tenant[:apartment_id]== 1)
        puts tenant[:name]
      end
    end


  # Print all the tenants in order from youngest to oldest
    youngest_to_oldest = tenants.sort_by do |tenant|
        tenant[:age]
    end
      puts youngest_to_oldest

  # Print the names of all the tenants alphabetically
    alphabet_tenants = tenants.sort_by do |tenant|
      tenant[:name].downcase
    end
      puts alphabet_tenants

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
      tenants.each do |tenant|
      puts tenant[:name]
        tenant_address = apartments.find{|apartment| apartment[:id] == tenant[:apartment_id]}
      puts tenant_address
    end
    #you do it in this order, instead of setting the block equal to tenant_address, because you need to first have the list of tenant names in order...
    #...to match them to the addresses.


  # When printing all apartments, under each apartment print all of its tenants
    apartments.each do |apartment|
      puts apartment[:address]
        occupant = tenants.find{|tenant| tenant[:apartment_id] == apartment[:id]}
      puts occupant
    end
