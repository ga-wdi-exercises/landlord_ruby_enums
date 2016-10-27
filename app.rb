require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]
#
# # First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
# # Explain how the data is structured
#   #Inside the method called data. This method has two arrays with 20 objects/instances inside
#   #at the end there is a return properties apartments and tenats
#
#
#   #What are the properties for each of the two types of hashes
# # id , address, monthly_rent, square_feet
# # name age apartments id
#
#
# # Use enumerables to -
#
# # Print all the addresses for the apartments
#
#   1. apartments.each {|item| puts item[:address]}
#
#   # Print all the names for tenants
#
#    2. tenants.each {|name| puts name[:name]}
#
#   # Print only apartments that are less then 700 in rent
#   3. apartments.select {|rent|
#      cheap_rent =rent[:monthly_rent] < 700
#    }
#
#   # Print only tenants that are over the age of 44
#   4. tenants.select {|person|
#     tenant_age = person[:age] < 44
#     }
#
#   # Print only tenants that have an apartment id of 1
#   5. tenants.select {|apt|
#     tenant_apt = apt[:id] == 1
#   }
#
#   # Print all the tenants in order from youngest to oldest
#    6. young = tenants.sort_by do |age|
#     	age[:age]
#     end
#
#
#   #Print the names of all the tenants alphabetically
#
#   7. names = tenants.sort_by do |name|
#       	name[:name]
#       end
#
#   ## More challenging
# # When printing tenants also print out the address that the tenant resides in.
#
#
# tenants.each do |tenant|
#    apartments.each do |apartment|
#    if tenant[:apartment_id] == apartment[:id]
#      puts  tenant[:name] +" " +  "lives in" +" " +  apartment[:address]
#    end
#  end
#  end
#
#
#
#   # When printing all apartments, under each apartment print all of its tenants
#
#
#   apartments.each do |apartment|
#      puts apartment[:address]
#     tenants.each do |tenant|
#     if tenant[:apartment_id] == apartment[:id]
#       puts tenant[:name]
#     end
#   end
#   end


puts "Welcome to Management Systems"
puts "Enter 1 to view apartment data."
puts " Enter 2 to view tenant data."
option = gets.chomp.to_i

if option == 1
  apartments.each do |apartment|
    puts "Apartment: #{apartment[:id]}, address: #{apartment[:address]}, cost: #{apartment[:monthly_rent]} sqft. #{apartment[:square_feet]}\n"
  end
end
if option == 2
     names = tenants.sort_by { |name| name[:name]}
     names.each do |name|
       puts name[:name]
    end
end
