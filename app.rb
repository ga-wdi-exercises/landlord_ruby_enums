require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes

    # method used called data
    # apartments is organized in hashes with keys: id, address, monthly_rent, and square_feet
    # tenants is organized in hashses with keys: id, name, age, apartment_id



# Use enumerables to -
  # Print all the addresses for the apartments
    # apartments.each do |apartment|
    # puts apartment[:address]
    # end

  # Print all the names for tenants
    # tenants.each do |tenant|
    #   puts tenant[:name]
    #   end

  # Print only apartments that are less then 700 in rent
    # under700apt = apartments.select do |apartments|
    #   apartments[:monthly_rent] < 700
    #   end
    #   puts under700apt

  # Print only tenants that are over the age of 44
      # over44tenants = tenants.select do |tenant|
      #   tenant[:age] < 44
      # end
      # puts over44tenants


  # Print only tenants that have an apartment id of 1
      # apartment_id1 = tenants.select do |tenant|
      #     tenant[:apartment_id] == 1
      #   end
      #     puts apartment_id1


  # Print all the tenants in order from youngest to oldest
        # youngest_to_oldest = tenants.sort_by do |tenant|
        #   tenant[:age]
        # end
        # puts youngest_to_oldest


  # Print the names of all the tenants alphabetically
    # abc = tenants.sort_by do |a|
    #   a[:name]
    #   end
    #   puts abc



  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
      # tenants.each do |tenant|
      #   puts tenant[:name]
      #   apartment = apartment.find {|apartment| apartment[:id] == tenant[:apartment_id] }
      #   puts apartment[:name]
      # end


  # When printing all apartments, under each apartment print all of its tenants
      # apartments.each do |apartment|
      #   puts apartment[:address]
      #   apartment_tenants = tenants.select {|tenant| tenant[:apartment_id] == apartment[:id]}
      #   apartment_tenants.each do |tenant|
      #     puts tenant[:name]
      #   end
      # end
