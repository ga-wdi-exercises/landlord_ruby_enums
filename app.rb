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


puts "Welcome to your Building Management System Application"
puts "Enter 1 to see an overview of your apartments.\n"
puts "Enter 2 to see all tenant information."
data_pick = gets.chomp.to_i

if data_pick == 1
  puts "You now have all access to all the apartment information. There is a total of 20 apartments"
  puts " *********\n"
  puts "Pick from the following options to view specific apartment information:\n
      1 for apartment addresses\n
      2 for apartment square footage\n
      3 for monthly rent"
  apt_info = gets.chomp.to_i

  if apt_info == 1
     apartments.each do |apartment|
       puts " ID:#{apartment[:id]} Address: #{apartment[:address]}"
      end
 elsif apt_info == 2
     apartments.each do |apartment|
       puts " ID:#{apartment[:id]} Square Footage: #{apartment[:square_feet]}"
     end
 else
     apartments.each do |apartment|
       puts " ID:#{apartment[:id]} Monthly Rent: #{apartment[:monthly_rent]}"
     end
 end

end



if data_pick ==2
  puts "You now have access to all the tenant information.\n Pick from the following options:"
  puts "To view specific tenant information, pick from the following list:\n
       Enter 1 for tenant name\n
       Enter 2 for tenant age\n
       Enter 3 for the apartment id of each tenant"
  tenant_info = gets.chomp.to_i


  if tenant_info == 1
    tenants.each do |tenant|
      puts " ID:#{tenant[:id]} Name: #{tenant[:name]}"
     end
  elsif tenant_info == 2
    tenants.each do |tenant|
      puts "ID:#{tenant[:name]} Age: #{tenant[:age]}"
     end
  else
    apartments.each do |apartment|
      tenants.each do |tenant|
        if tenant[:apartment_id] == apartment[:id]
          puts  "  #{ tenant[:apartment_id]}  #{tenant[:name]}  #{apartment[:address]}\n" + " ****"
        end
      end
    end
  end


end
