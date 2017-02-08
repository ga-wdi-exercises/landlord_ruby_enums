require_relative "data"
# require "pry"


require_relative "models/apartments"
require_relative "models/tenants"
apartments = data[:apartments]
tenants = data[:tenants]
ruby_apartments = []
ruby_tenants = []

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  #   The data is stored within 2 arrays named 'tenants' & 'apartments'. The arrays are local variables to
  #   the function 'data' and will return information in a hash with keys 'tenants' & 'apartments'
  # What are the properties for each of the two types of hashes
  #    apartments: id, address, monthly_rent, square_feet
  #    tenants: id, name, age, apartment_id
# Use enumerables to -
  # Print all the addresses for the apartments
  # Print all the names for tenants
  # Print only apartments that are less then 700 in rent
  # Print only tenants that are over the age of 44
  # Print only tenants that have an apartment id of 1
  # Print all the tenants in order from youngest to oldest
  # Print the names of all the tenants alphabetically

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants


# Print all the addresses for the apartments
# apartments.each do |apartment|
#   puts apartment[:address]
# end
#
# # Print all the names for tenants
# tenants.each do |tenant|
#   puts tenant[:name]
# end
#
# # Print only apartments that are less then 700 in rent
# apartments.each do |apartment|
#   if apartment[:monthly_rent] < 700
#     puts apartments
#   end
# end
#
# # Print only tenants that are over the age of 44
# tenants.each do |tenant|
#   if tenant[:age] > 44
#     puts tenants
#   end
# end
#
# # Print only tenants that have an apartment id of 1
# tenants.each do |tenant|
#   if tenant[:apartment_id] == 1
#     puts tenants
#   end
# end
#
# # Print all the tenants in order from youngest to oldest
# tenants.sort_by! do |tenant|
#   tenant[:age]
# end
#
# # Print the names of all the tenants alphabetically
# tenants.sort_by! do |tenant|
#   tenant[:name]
# end

apartments.each do |apartment|
  ruby_apartments << Apartment.new(apartment[:id], apartment[:address], apartment[:monthly_rent], apartment[:square_feet])
end

tenants.each do |tenant|
  ruby_tenants << Tenant.new(tenant[:id], tenant[:name], tenant[:age], tenant[:apartment_id])
end

def start_app
  puts "WELCOME TO BOB PIZZA'S APARTMENTS!!"
  puts "Enter 1 to view all apartments information."
  puts "Enter 2 to view all tenants information."
  puts "Enter any other key to exit."

  userInput = gets.chomp
    if userInput == '1'
      Apartment.view_all_apartments
      elsif userInput == '2'
        Tenant.view_all_tenants
        else
          puts "QUITTING PROGRAM..."
    end
end

start_app
