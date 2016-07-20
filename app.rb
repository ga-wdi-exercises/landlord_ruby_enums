require_relative "data"
@apartments = data[:apartments]
@tenants = data[:tenants]


# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  #The return value for data is a hash. The first key is associated with the first array. The second key
  #is associated with the second. Thus the return value essentially makes data(which was two arrays consisting of hashes) into a hash with two keys.
  #So our data is a hash with two keys. Each key is an array of hashes.

  # What are the properties for each of the two types of hashes
  #ID, address, monthly_rent, square_feet
  #ID,name,age,apartment_id

# # Use enumerables to -
#   # Print all the addresses for the apartments
#   apartments.each do |apartment|
#     puts apartments[:address]
#   end
#   # Print all the names for tenants
#   tenants.each do |tenant|
#     puts tenant[:name]
#   end
#   # Print only apartments that are less then 700 in rent
#   apartments.select{|apartment| apartment[:square_feet] < 700}
#   # Print only tenants that are over the age of 44
#   tenants.select{|tenant| tenant[:age] > 44}
#   # Print only tenants that have an apartment id of 1
#   tenants.select{|tenant| tenant[:id] == 1}
#   # Print all the tenants in order from youngest to oldest
#   tenants.sort_by!{|tenant| tenant[:age]}
#   tenants.each{|tenant| puts tenant}
#   # Print the names of all the tenants alphabetically
#   tenants.sort_by!{|tenants| tenant[:name]}
#   tenants.each{|tenant| puts tenant}

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants

def startApp
  puts ""
  puts "Landlordy: the CLI app for landlords"
  puts ""
  puts "Enter 1 to view your apartment properties"
  puts "Enter 2 to view your tenants"
  return gets.chomp
end

def printApartments
  puts ""
  @apartments.each do |apartment|
    puts "Apartment num: #{apartment[:id]}, Address : #{apartment[:address]}, rent: #{apartment[:rent]}, sq-ft : #{apartment[:square_feet]}"
  end
end

def printTenants
  puts ""
  @tenants.each do |tenant|
    puts "Tenant name : #{tenant[:name]}, age : #{tenant[:age]}"
  end
end

userInput = startApp
  if userInput == "1"
    printApartments
  elsif userInput == "2"
    printTenants
  end
