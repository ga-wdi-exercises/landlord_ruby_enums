require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
    # The data is inside two hashes, one for apartments, containing id numbers, addresses, rent amounts, and square footages. The other contains tenant info, assigns each tenant an id number, name, age, and the id number of the apartment they live in.
  # What are the properties for each of the two types of hashes
    # answered above


# Use enumerables to -
  # Print all the addresses for the apartments
  #
  # apartments.each do |apt|
  #   puts apt[:address]
  # end

  # Print all the names for tenants
  #
  # tenants.each do |name|
  #   puts name[:name]
  # end

  # Print only apartments that are less then 700 in rent

  # apartments.each do |address|
  #   if address[:monthly_rent]<= 700
  #     puts address
  #   end
  # end

  # Print only tenants that are over the age of 44
  #
  # tenants.each do |tenant|
  #   if tenant[:age]>44
  #     puts tenant[:name]
  #   end
  # end

  # Print only tenants that have an apartment id of 1
  #
  # tenants.each do |id|
  #   if id[:id] == 1
  #     puts id
  #   end
  # end

  # Print all the tenants in order from youngest to oldest
 #
 # youngest = tenants.sort_by do |tenant|
 #    tenant[:age]
 #    end
 #
 #      puts youngest
 #

  # Print the names of all the tenants alphabetically
  #
  # azOrder = tenants.sort_by do |tenant|
  #   tenant[:name]
  # end
  #
  # puts azOrder

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants
  ruby_apartments = apartments.map do |apt|
    apt = Apartment.new(apt[:id], apt[:address], apt[:monthly_rent], apt[:square_feet])
  end

  ruby_tenants = tenants.map do |tenant|
    tenant = Tenant.new(tenant[:id], tenant[:name], tenant[:age], tenant[:apartment_id])
  end

  # apartments = apartments.each do |apt|
  # tenants = tenants.each do |occ|

  print "Input 1 for apartment list, 2 for tenants. Enter 'quit' to exit.\n"

  landlord = gets.chomp

  if landlord == "1"
    #shows all apartments
    apartments.each do |apt|
      puts apt[:address]
  end

  # puts "press <enter> to continue"

  elsif landlord == "2"

    #shows all tenants
    tenants.each do |tenant|
      puts tenant[:name]
  end

  # puts "press <enter> to continue"

  else
    puts "Please enter a 1 or 2 to view property or tenant information, or 'quit' to exit."

    # break if landlord == "quit"
  end
