require_relative "models/apartment"
require_relative "models/tenant"
require_relative "data"

apartments = data[:apartments]
tenants = data[:tenants]

ruby_apartments = []
ruby_tenants = []

apartments.each do |apartment|
new_apts = Apartment.new(apartment[:id], apartment[:address], apartment[:monthly_rent], apartment[:square_feet])
ruby_aparments << new_apts
end

tenants.each do |tenant|
new_tenants = Tenant.new(tenant[:id], tenant[:name], tenant[:age], tenant[:apartment_id])
ruby_tenants << new_tenants
end


#
# # puts apartments.inspect
#
# # First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
# # Explain how the data is structured
# # apartments(id, address, monthly_rent, square_feet)
# # tenants(id, name, age, apartment_id)
#
# # What are the properties for each of the two types of hashes
#
#
# # Use enumerables to -
# # Print all the addresses for the apartments
# # apartment_addresses = apartments.each { |apartment| puts apartment[:addresses]}
# # puts apartment_addresses
#
# # Print all the names for tenants
# # all_tenant_names = tenants.each {|tenant| puts tenant[:name]}
#
# # Print only apartments that are less then 700 in rent
# # less_than_700 = apartments.select {|apartment| apartment[:monthly_rent] < 700}
# # puts less_than_700
# #
# # puts "I found #{less_than_700.length} apartments that match your criteria: "
# # less_than_700.each {|apartment| puts apartment[:address]}
#
# # Print only tenants that are over the age of 44
# # tenants_over_44 = tenants.select {|tenant| tenant[:age] > 44}
# # puts tenants_over_44
#
# # Print only tenants that have an apartment id of 1
# # apartment_id_1 = tenants.select {|tenant| tenant[:id] == 1}
# # puts apartment_id_1
#
# # Print all the tenants in order from youngest to oldest
# # youngest_to_oldest = tenants.sort_by {|tenant| tenant[:age]}
# # puts youngest_to_oldest
#
# # Print the names of all the tenants alphabetically
# # tenants_alpha = tenants.sort_by! {|tenant| tenant[:name]}
# # puts tenants_alpha
#
# ## More challenging
# # When printing tenants also print out the address that the tenant resides in.
#
# # tenants.each do |tenant|
# #   puts tenant
# #
# #   tenants_apartment_id = tenant[:apartment_id]
# #   matching_apartment = apartments.find do |apartment|
# #     apartment[:id] == tenants_apartment_id
# #   end
# #
# #   puts tenant_and_addresses
# #   puts matching_apartment
# # tenant_and_addresses = tenants.each {|tenant| puts tenant}
# #
# #
# #   # When printing all apartments, under each apartment print all of its tenants
#
# # tenants_apartment_id = tenant[:apartment_id]
# # matching_apartment = apartments.find do |apartment|
# #   apartment[:id] == tenants_apartment_id
# # end
# #
# # puts "#{tenant[:name]} lives at #{matching_apartment[:address]}"
# # puts matching_apartment
#
# #********************************************************************
#
#
# # input variables
#
#
# # get user option value

#
# # def pickOption (option1, option2, option3)
# puts "Please pick an option: type '1' list of apartments; type '2' list of tenants:  type '3' tenants in each apartment;  type '4' tenant addresses"
# option = gets.chomp
#
# while option != "1" && option !="2"  && option !='3' && option !='4' do
#   puts "Please pick an option: type '1' list of apartments; type '2' list of tenants;  type '3' tenants in each apartment;  type '4' tenant addresses"
#   option = gets.chomp
#   puts option
# end
# # #
# # #   # def option1
# if option == "1"
#   apartments.each do |apartment|
#     puts apartment
#   end
#   #
#   #   # def option2
# elsif option == "2"
#   list_of_tenants = tenants.each do |tenant|
#     puts tenant[:name]
#   end
#   #
#   # # def option3
# elsif option == "3"
#   apartments.each do |apartment|
#     puts apartment[:addresses]
#     tenants_of_apartment = tenants.select{|tenant| tenant[:apartment_id] == apartment[:id]}
#
#     tenants_of_apartment.each do |tenant|
#       puts "#{tenant[:name]} lives at apartment id# #{apartment[:id]}"
#     end
#   end
#
# elsif option == "4"
#   apartments.each do |apartment|
#     puts apartment[:addresses]
#     tenant_addresses = tenants.select{|tenant| tenant[:apartment_id] == apartment[:id]}
#
#     tenant_addresses.each do |tenant|
#       puts "#{tenant[:name]}, address: #{apartment[:address]}"
#     end
#   end
#
#
# end
