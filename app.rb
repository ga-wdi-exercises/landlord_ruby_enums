require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
group_of_apartments = []
group_of_tenants = []

data[:apartments].each do |apartment|
  group_of_apartments << ruby_apartment = Apartment.new(apartment[:id], apartment[:address], apartment[:monthly_rent], apartment[:square_feet])
end

data[:tenants].each do |tenant|
 group_of_tenants << ruby_tenant = Tenant.new(tenent[:id], tenant[:name], tenant[:age], tenant[:apartment_id])
end

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # Data is nested within a function, two arrays that hold hashes
  # What are the properties for each of the two types of hashes
  # apartments: id, address, monthly_rent, square_feet
  # tenants: id, name, age, apartment_id

# Use enumerables to -
  # Print all the addresses for the apartments
  # apartments.each do |obj|
  #   puts obj[:address]
  # end

  # Print all the names for tenants
  # tenants.each do |tenant|
  #   puts tenant[:name]
  # end

  # Print only apartments that are less then 700 in rent
  # apartments.each do |apartment|
  #   if apartment[:monthly_rent] < 700
  #     puts apartment[:monthly_rent]
  #   end
  # end

  # Print only tenants that are over the age of 44
  # tenants.each do |tenant|
  #   if tenant[:age] > 44
  #     puts tenant[:name]
  #   end
  # end

  # Print only tenants that have an apartment id of 1
  # tenants.each do |tenant|
  #   if tenant[:apartment_id] == 1
  #     puts tenant[:name]
  #   end
  # end

  # Print all the tenants in order from youngest to oldest
  # order = tenants.sort_by do |tenant|
  #     tenant[:age]
  # end
  # puts order

  # Print the names of all the tenants alphabetically
  # puts tenants.sort_by {|tenant| tenant[:name]}

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # tenants.each do |tenant|
  #   apartments.each do |apartment|
  #    if tenant[:apartment_id] == apartment[:id]
  #      puts "#{tenant[:name]} lives at #{apartment[:address]}"
  #    end
  #   end
  # end

  # When printing all apartments, under each apartment print all of its tenants
  # apartments.each do |apartment|
  #   puts "Apartment address: #{apartment[:address]}"
  #   tenants.each do |tenant|
  #    if tenant[:apartment_id] == apartment[:id]
  #      puts tenant[:name]
  #    end
  #   end
  # end

def data_system apartments, tenants
  puts "*********** Hello Bob Pizza! Welcome to the Building Managment Data System **********\n
  View Properties - Enter '1'\n
  List of Tenants - Enter '2'\n
  Overview of Occupancy - Enter '3'\n
  Apartment Lookup by Tenant Name - Enter '4'
  "

  answer = gets.chomp.to_i

  if answer == 1
    apartments.each do |apartment|
      puts "Apartment number: #{apartment[:id]}, location: #{apartment[:address]}"
    end
  end
  if answer == 2
    alphabet = tenants.sort_by{|tenant| tenant[:name]}
    alphabet.each do |tenant|
      puts "Resident: #{tenant[:name]}"
    end
  end
  if answer == 3
    apartments.each do |apartment|
      puts "*****| Apartment #{apartment[:id]} | #{apartment[:address]} |*****"
      tenants.each do |tenant|
       if tenant[:apartment_id] == apartment[:id]
         puts tenant[:name]
       end
      end
    end
  end
  if answer == 4
    puts "Please enter the tenant name"
    name = gets.chomp
    find_tenant = tenants.select do |tenant|
       tenant[:name] == name
     end
    find_apartment = apartments.select do |apt|
        apt[:id] == find_tenant[0][:apartment_id]
      end
    puts "#{find_tenant[0][:name]} lives at #{find_apartment[0][:address]}"
  end
end

data_system apartments, tenants
