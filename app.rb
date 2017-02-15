require_relative "data"
require_relative "models/apartment"
require_relative "models/tenants"
apartments = data[:apartments]
tenants = data[:tenants]
ruby_apartments = []
ruby_tenants = []

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes

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


apartments.each do |apartment|
  new_apartment = Apartment.new(apartment[:id], apartment[:address], apartment[:monthly_rent], apartment[:square_feet])
  ruby_apartments.push(new_apartment)
end

tenants.each do |tenant|
  new_tenant = Tenants.new(tenant[:id], tenant[:name], tenant[:age], tenant[:apartment_id])
  ruby_tenants.push(new_tenant)
end



# puts "Enter in '1' to view all apartments. Enter in '2' to view all tenants. Enter 3 to see tenant with address, listed with tenant on top of address."
# input=gets.chomp
#
# if input == 1
#   show_all_apartments()
# elsif input == 2
#   show_all_tenants
# elsif input == 3
#   apartment_with_tenant(ruby_apartments, ruby_tenants)
# end

def call_all_apartments(ruby_apartments)
  ruby_apartments.each do |apartment|
    puts apartment.show_all_apartments
  end
end

def call_all_tenants(ruby_tenants)
  ruby_tenants.each do |tenant|
    puts tenant.show_all_tenants
  end
end

def apartment_with_tenant(ruby_apartments, ruby_tenants)
  ruby_tenants.each do |tenant|
    puts tenant.show_all_tenants
    tenant_ids = tenant.show_id
    app = ruby_apartments.select{|apt| apt.apartment_id ==tenant_ids}
    app.each do |address|
      puts address.show_address
    end
  end
end

puts "To see all apartments, enter in 1. To see all tenants, enter in 2. To see tenants listed with apartments, put 3 (tenants are above address)."
input = gets.chomp
if input == "1"
  call_all_apartments(ruby_apartments)
elsif input == "2"
  call_all_tenants(ruby_tenants)
elsif input =="3"
  apartment_with_tenant(ruby_apartments, ruby_tenants)
else
  puts "That's not an option."
end

# apartments.each do |address|
#   if address[:monthly_rent] < 700
#     puts address
#   end
# end
#
# tenants.each do |tenant|
#   if tenant[:age] > 44
#     puts tenant
#   end
# end
#
# id1 = tenants.select {|tenant| tenant[:apartment_id]==1}
# puts id1
#
# age_sort = tenants.sort_by do |tenant|
#   tenant[:age]
# end
# puts age_sort
#
# here's where i did the challenge bit

# name_sort = ruby_tenants.sort_by do |tenant|
#   tenant[:name]
# end
#
# puts name_sort
# name_sort.each do |tenant|
#     puts tenant[:name]
#     apartment_id = tenant[:apartment_id]
#     app = apartments.select{|apartment| apartment[:id]==apartment_id}
#     app.each do |address|
#       printAdd = address[:address]
#       puts printAdd
#     end
#
# end
