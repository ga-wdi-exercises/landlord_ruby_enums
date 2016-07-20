# require_relative "data"
# apartments = data[:apartments]
# tenants = data[:tenants]
#
# # First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
#   # Explain how the data is structured
#     #The information is stored in two arrays, 'tenants' and 'apartments', which are both local variables of a function 'data' - which, when called, returns the information in a hash that has two keys, one each for 'tenants' and 'apartments'
#   # What are the properties for each of the two types of hashes
#     # 'apartments' has properites: id, address, monthly_rent and square_feet
#     # 'tenants' has properties: id, name, age, apartment_id
#
# # Use enumerables to -
#   Print all the addresses for the apartments
#   apartments.each do |apartment|
#     puts apartment[:address]
#   end
#   # Print all the names for tenants
#   tenants.each do |tenant|
#     puts tenant[:name]
#   end
#   # Print only apartments that are less then 700 in rent
#   puts apartments.select {|apartment| apartment[:monthly_rent] < 700}
#   # Print only tenants that are over the age of 44
#   puts tenants.select {|tenant| tenant[:age] > 44}
#   # Print only tenants that have an apartment id of 1
#   puts tenants.select {|tenant| tenant[:id] == 1}
#   # Print all the tenants in order from youngest to oldest
#   puts tenants.sort{|left, right| left[:age] <=> right[:age]}
#   # Print the names of all the tenants alphabetically
#   puts tenants.sort{|left, right| left[:name] <=> right[:name]}
#   ## More challenging
#   # When printing tenants also print out the address that the tenant resides in.
#   tenants.each do |tenant|
#     t_name = tenant[:name]
#     puts t_name
#     apt_id = tenant[:apartment_id]
#     matched_apt = apartments.select{|apt| apt[:id] == apt_id}
#     puts matched_apt[0][:address]
#   end
#   # When printing all apartments, under each apartment print all of its tenants
#   apartments.each do |apartment|
#     puts apartment[:address]
#     apt_id = apartment[:id]
#     residents = tenants.select{|tenant| tenant[:apartment_id] == apt_id}
#     residents.each{|resident| puts resident[:name]}
#     puts "*****"
#   end

require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
apartments = data[:apartments]
tenants = data[:tenants]
ruby_apartments = []
ruby_tenants = []

# puts apt = Apartment.new(1, 2, 3, 4).inspect
# puts ten = Tenant.new(1, 2, 3, 4).inspect

apartments.each do |apartment|
  apt = Apartment.new(apartment[:id], apartment[:address], apartment[:monthly_rent], apartment[:square_feet])
  ruby_apartments.push(apt)
end

tenants.each do |tenant|
  ten = Tenant.new(tenant[:id], tenant[:name], tenant[:age], tenant[:apartment_id])
  ruby_tenants.push(ten)
end


# view all buildings by address
def get_all_addresses(apts)
  apts.each do |apartment|
    puts apartment.address
  end
end

def get_all_names(tens)
  tens.each do |tenant|
    puts tenant.name
  end
end

# def activate_sweet_app_broh
  puts "Enter 1 to see all addresses."
  puts "Enter 2 to see all tenant names."
  puts "Enter anything else to nope"

  input = gets.chomp

  if input == '1'
    get_all_addresses(ruby_apartments)
  elsif input == '2'
    get_all_names(ruby_tenants)
  else
    puts "nope.exe"
  end
# end

# activate_sweet_app_broh
