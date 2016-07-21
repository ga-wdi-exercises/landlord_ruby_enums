require 'pry'
require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
apartments = data[:apartments]
tenants = data[:tenants]

# ruby_apartments = []
# ruby_tenants = []

apartments.each do |apartment|
  Apartment.new(apartment[:id], apartment[:address], apartment[:monthly_rent], apartment[:square_feet])
end

tenants.each do |tenant|
  Tenant.new(tenant[:id],tenant[:name],tenant[:age],tenant[:apartment_id])
end



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
  puts "Enter 3 to view tenants by apartment"
  return gets.chomp
end

# def printApartments
#   puts ""
#   apartments.each do |apartment|
#     puts "Apartment num: #{apartment[:id]}, Address : #{apartment[:address]}, rent: #{apartment[:rent]}, sq-ft : #{apartment[:square_feet]}"
#   end
# end
#
# def printTenants
#   puts ""
#   tenants.each do |tenant|
#     puts "Tenant name : #{tenant[:name]}, age : #{tenant[:age]}"
#   end
# end
#
userInput = startApp
  if userInput == "1"
    Apartment.show
  elsif userInput == "2"
    Tenant.show
  elsif userInput == "3"
    stored_tenants = Tenant.sortByApt
    stored_apartments = Apartment.storeApt
    puts ""
    stored_apartments.each do |apt|
      stored_tenants.each do |ten|
        if apt.id == ten.apartment_id
          puts "#{ten.name} lives at #{apt.address}"
        end
      end
    end

  end


binding.pry
