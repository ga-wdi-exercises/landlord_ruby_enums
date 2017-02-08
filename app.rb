require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
      #The data is seperated into two sets, apartments and tenents. Then they are a
  # What are the properties for each of the two types of hashes

# Use enumerables to -
  # Print all the addresses for the apartments
  # address = apartments.map {|apartment| apartment[:address]}
  #   puts address
  # Print all the names for tenants
  # names = tenants.map {|tenant| tenant[:name]}
  #   puts names
  # Print only apartments that are less then 700 in rent
  # cheaper_apartments = apartments.select {|apartment| apartment[:monthly_rent] < 700}
  #   puts cheaper_apartments
  # Print only tenants that are over the age of 44
  # older_tenants = tenants.select {|tenant| tenant[:age] > 44}
  #   puts older_tenants
  # Print only tenants that have an apartment id of 1
  # id = tenants.select {|tenant| tenant[:apartment_id] == 1}
  #   puts id
  # Print all the tenants in order from youngest to oldest
  # senority = tenants.sort_by {|tenant| tenant[:age]}
  #   puts senority
  # Print the names of all the tenants alphabetically
  # alpha = tenants.sort_by {|tenant| tenant[:name]}
  #   puts alpha
  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # tenants.each do |tenant|
  #   apartments.each do |apartment|
  #     if tenant[:apartment_id] == apartment[:id]
  #       puts apartment[:address]
  #       puts tenant[:name]
  #       puts "*"
  #     end
  #   end
  # end
  # When printing all apartments, under each apartment print all of its tenants
  # apartments.each do |apartment|
  #   puts "--#{apartment[:address]}--"
  #   tenants.each do |tenant|
  #      if apartment[:id] == tenant[:apartment_id]
  #       puts tenant[:name]
  #     end
  #   end
  #   puts "***"
  # end

  puts "Landlord Directory Please Select an Option"
  puts "1. View All Properties"
  puts "2. View All Tenants"
  answer = gets.chomp.to_i
    if answer == 1
      apartments.each do |apartment|
        puts apartment[:address]
      end
    end

    if answer == 2
      tenants.each do |tenant|
        puts tenant[:name]
      end
    end
