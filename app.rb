require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
    ## My Answer:
    ## The data is structured by two hashes that hold the key values of the address, rent, and square feet for the apartments, and the name, age, and aparment id of the tenants.
  # What are the properties for each of the two types of hashes
    ## My Answer:
    ## The properties are the id, addresses, names etc

# Use enumerables to -
  # Print all the addresses for the apartments
  # apartments.each {|apartment| puts apartment[:address]}

  # Print all the names for tenants
  # tenants.each {|tenant| puts tenant[:name]}

  # Print only apartments that are less then 700 in rent
  # apartments.each do |rent|
  #   if rent[:monthly_rent] < 700
  #     puts rent[:monthly_rent]
  #   end
  # end

  # Print only tenants that are over the age of 44
  # tenants.each do |age|
  #   if age[:age] > 44
  #     puts age[:age]
  #   end
  # end

  # Print only tenants that have an apartment id of 1
  # tenants.each do |tenant|
  #   if tenant[:id] == 1
  #     puts tenant[:id]
  #   end
  # end

  # Print all the tenants in order from youngest to oldest
  # tenants = tenants.sort_by {|hsh| hsh[:age]}
  # puts tenants

  # Print the names of all the tenants alphabetically
  # alpha_order = tenants.sort_by {|tenant| tenant[:name].downcase}
  # puts alpha_order

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # tenants.each do |tenant|
  #   puts tenant[:name]
  #   apartment = apartments.find do |apartment|
  #     tenant[:id] == apartment[:id]
  #   end
  #   puts apartment[:address]
  # end

  # When printing all apartments, under each apartment print all of its tenants
  # apartments.each do |apartment|
  #   puts apartment[:address]
  #   tenant = tenants.find do |tenant|
  #     tenant[:id] == apartment[:id]
  #   end
  #   puts tenant[:name]
  # end
