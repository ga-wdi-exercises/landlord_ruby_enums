require "pry"

require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
apartments = data[:apartments]
tenants = data[:tenants]
ruby_apartments = []
ruby_tenants = []

#apartment {
# => :id , :address :monthly_rent, :square_feet
#tenant {
# => :id , :name, :age, :apartment_id
#}


apartments.each{|apartment| ruby_apartments << Apartment.new(apartment[:id], apartment[:address], apartment[:monthly_rent], apartment[:square_feet])}

tenants.each{|tenant| ruby_tenants <<
  Tenant.new(tenant[:id], tenant[:name], tenant[:age], tenant[:apartment_id])}

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes
#
# # Use enumerables to -
#   # Print all the addresses for the apartments DONE
#   # Print all the names for tenants DONE
#   # Print only apartments that are less then 700 in rent
#   # Print only tenants that are over the age of 44
#   # Print only tenants that have an apartment id of 1
#   # Print all the tenants in order from youngest to oldest
#   # Print the names of all the tenants alphabetically
#
#   ## More challenging
#   # When printing tenants also print out the address that the tenant resides in.
#   # When printing all apartments, under each apartment print all of its tenants
#
# addresses = []
# dwellers = []
# less_than = []
# old_folks = []
# id_one = []
# young_to_old = []
# alphabetically = []
#
#
# # apartments.each{|apartment| puts apartment[:address]}
#
# apartments.each{|apartment| addresses << apartment[:address]} # array
#
# # tenants.each{|tenant| puts tenant[:name]}
# tenants.each{|tenant| dwellers << tenant[:name]} # array
#
#
# # apartments.each{|apartment|
# #   if (apartment[:monthly_rent] < 700)
# #     puts apartment
# #   end
# # }
# # in array
# apartments.each{|apartment|
#   if (apartment[:monthly_rent] < 700)
#     less_than << apartment
#   end
# }
#
# tenants.each{|tenant|
#   if(tenant[:age] > 44)
#     old_folks << tenant
#   end
# }
#
# tenants.each{|tenant|
#   if(tenant[:apartment_id] == 1)
#     id_one << tenant
#   end
#   }
#
# tenants.each{ |tenant| young_to_old << tenant[:age] }
# young_to_old.sort!
#
# tenants.each{ |tenant| alphabetically << tenant[:name] }
# alphabetically.sort!
#
#
# message = "What option would you like?\n
# 1 - gets you list of addresses\n\n
# 2 - gets you a list of tenants\n\n
# 3 - gets you a list of rent less than $700\n\n
# 4 - gets you a list of tenants older than 44\n\n
# 5 - gets you the tenants in apartment is 1\n\n
# 6 - gets youngest to oldest ages\n\n
# 7 gets you tenants listed alphabetically\n\n"
#
# continue = 'y'
# until continue =='n'
#   puts message
#   input = gets.chomp
#   case input
#     when '1'
#       puts addresses
#     when '2'
#       puts dwellers
#     when '3'
#       puts less_than
#     when '4'
#       puts old_folks
#     when '5'
#       puts id_one
#     when '6'
#       puts young_to_old
#     when '7'
#       puts alphabetically
#     else
#       puts "You did not give me a valid option\n"
#   end
#   puts "would you like to pick again? (y/n)\n"
#   continue = gets.chomp
# end
#


binding.pry
