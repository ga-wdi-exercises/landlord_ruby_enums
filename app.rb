require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  ## The data is structured in apartments to a specific address, monthly_rent, and square_feet so in all the specifics of the actual apartment and the tenants describe their name, age, and apartment_id which are more specific to them.
  ## In short apartments describes the apartment's properties and tenants describe the tenant's properties
  # What are the properties for each of the two types of hashes
  ## apartment: id, address, monthly_rent, square_feet
  ## tenants: id, name, age, apartment_id

# Use enumerables to -
  # Print all the addresses for the apartments
    # apartments.each {|apartment| puts apartment[:address]}
  # Print all the names for tenants
    # tenants.each {|tenant| puts tenant[:name]}
  # Print only apartments that are less then 700 in rent
    # less_than_700 = apartments.select do |apartment|
      # apartment[:monthly_rent] < 700
    # end
    # puts less_than_700
  # Print only tenants that have an apartment id of 1
    # apt_id_1 = tenants.select do |tenant|
      # tenant[:apartment_id] ==1
    # end
    # puts apt_id_1
  # Print all the tenants in order from youngest to oldest
    # puts young_to_old = tenants.sort_by{|tenant| tenant[:age] }
  # Print the names of all the tenants alphabetically
    # puts alphabetical_name = tenants.sort_by{|tenant| tenant[:name]}

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
    # tenants.each do |tenant|
    #   apartments.each do |apartment|
    #     if tenant[:apartment_id] == apartment[:id]
    #      puts "#{tenant[:name]} #{apartment[:address]}"
    #     end
    #   end
    # end
  # When printing all apartments, under each apartment print all of its tenants
    # apartments.each do |apartment|
    #     house_tenants = tenants.select{|tenant| tenant[:apartment_id] == apartment[:id]}
    #   puts apartment
    #   puts house_tenants
    # end
