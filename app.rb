require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
apartments = data[:apartments]
tenants = data[:tenants]
ruby_apartments = []
ruby_tenants = []

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
    ##The date is structed as a def of two arrays; apartments and tennants. Tennants are linked to apartments by :apartment_id
  # What are the properties for each of the two types of hashes
    #apartment properties:id, address, monthly_rent, square_feet
    #tennants properties: id, name, age, apartment_id


# Use enumerables to -
  # Print all the addresses for the apartments
  # apt = apartments.each do |apartment|
  #   apartment[:address]
  #   puts apartment[:address]
  # end
  # Print all the names for tenants
  # tenants.each do |tenant|
  #   tenant[:name]
  # end
  # Print only apartments that are less then 700 in rent
  # apartments.each do |apartment|
  #   if apartment[:square_feet] < 700
  #     apartment
  #   end
  # end
  # Print only tenants that are over the age of 44
  # tenants.each do |tenant|
  #   if tenant[:age] > 44
  #     tenant
  #   end
  # end
  # Print only tenants that have an apartment id of 1
  # tenants.each do |tenant|
  #   if tenant[:apartment_id] == 1
  #     tenant
  #   end
  # end
  # Print all the tenants in order from youngest to oldest
  # tenants.sort_by{|tenant| tenant[:age]}

  # Print the names of all the tenants alphabetically
  # puts tenants.sort_by{|tenant| tenant[:name]}


  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.

  # When printing all apartments, under each apartment print all of its tenants


  #App code
  puts "enter number"
  number = gets.chomp

  if number.to_i == 1
  ruby_apartments.each do |apartment|
      puts apartment.address
    end
  end
  if number.to_i == 2
    ruby_tenants.each do |tenant|
    puts tenant.name
    end
  end

  apartments.each do |apt|
    ruby_apartments << Apartment.new(apt[:id], apt[:address], apt[:monthly_rent], apt[:square_feet])
  end

  tenants.each do |ten|
    ruby_tenants << Tenant.new(ten[:id], ten[:address], ten[:monthly_rent], ten[:square_feet])
  end
