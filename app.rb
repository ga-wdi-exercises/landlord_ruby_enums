require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
#   There are separate arrays for apartments and tenants. The
#      tenants array links to the apartments by containing the id
#       of the apartment that they live in

  # What are the properties for each of the two types of hashes
        # apartments: id,address,monthly_rent,square_feet
        # tenants: id,name,age,apartment_id

# Use enumerables to -

# -------------------------------------------------------
#   WARNING: puts commented out, so nothing will print
# -------------------------------------------------------

  # Print all the addresses for the apartments
  apartments.each do |apt|
    #puts apt[:address]
  end

  # Print all the names for tenants
  tenants.each do |tenant|
    #puts tenant[:name]
  end

  # Print only apartments that are less then 700 in rent
  apartments.each do |apt|
    if apt[:monthly_rent] < 700
      #puts apt[:monthly_rent]
    end
  end

  # Print only tenants that are over the age of 44
  tenants.each do |tenant|
    if tenant[:age] > 44
      #puts tenant[:age]
    end
  end

  # Print only tenants that have an apartment id of 1
  tenants.each do |tenant|
    if tenant[:apartment_id] == 1
      #puts tenant[:apartment_id]
    end
  end

  # Print all the tenants in order from youngest to oldest
  newArray = tenants.sort_by {|tenant| tenant[:age]}
  newArray.each do |tenant|
    #puts tenant[:age]
  end

  # Print the names of all the tenants alphabetically
  newArray = tenants.sort_by {|tenant| tenant[:name]}
  newArray.each do |tenant|
    #puts tenant[:name]
  end

  ## More challenging

  # When printing tenants also print out the address that the tenant resides in.
  tenants.each do |tenant|
    tenantApt = tenant[:apartment_id]
    apartments.each do |apt|
      if apt[:id] == tenantApt
        #puts "#{tenant[:name]} lives at: #{apt[:address]}"
      end
    end
  end

  # When printing all apartments, under each apartment print all of its tenants

  apartments.each do |apt|
    aptID = apt[:id]
    tenants.each do |tenant|
      if tenant[:apartment_id] == aptID
        puts "#{tenant[:name]} lives at #{apt[:id]}"
      end
    end
  end
