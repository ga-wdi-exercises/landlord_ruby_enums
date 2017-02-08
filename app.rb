require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
ruby_apartments = []
ruby_tenants = []

data[:tenants].each do |tenant|
  ruby_tenants << tenant = Tenant.new(tenant[:name], tenant[:age], tenant[:apartment_id])
end


data[:apartments].each do |apartment|
  ruby_apartments << apartments = Apartment.new(apartment[:id], apartment[:address], apartment[:monthly_rent], apartment[:square_feet])
end

answer = 0

loop do
  puts '---------------'
  puts "Enter the number you would like to access"
  puts "1. View apartments"
  puts "2. View tenants"
  puts "3. Check occupancy"
  puts "4. Check where a tenant lives"
  puts '---------------'
  answer = gets.chomp.to_i
  if answer == 1
     ruby_apartments.each do |apartment|
       puts apartment.get_address
     end
  elsif answer == 2
    ruby_tenants.each do |tenant|
      puts tenant.get_name
    end
  elsif answer == 3
    ruby_apartments.each do |apartment|
      puts ''
      puts apartment.get_address
      puts "---------"
      tenants_in_apartment = ruby_tenants.select do |tenant|
        tenant.get_apartment_id == apartment.get_id
      end
      if tenants_in_apartment.length == 0
        puts "No tenants in this apartment"
      else
        tenants_in_apartment.each do |tenant|
          puts tenant.get_name
        end
      end
    end
  elsif answer == 4
    puts "Enter tenant name"
    name = gets.chomp
    find_tenant = ruby_tenants.select do |tenant|
      tenant.get_name == name
    end
    find_apartment = ruby_apartments.select do |apartment|
      find_tenant[0].get_apartment_id == apartment.get_id
    end
    puts "Lives at #{find_apartment[0].get_address}"
  end
end

# data[:apartment].each do |apartment|
#   ruby_tenants.select do |tenant|
#   end
# end

# print_apartment_address = apartments.each do |apartment|
#   puts apartment[:address]
# end
#
# print_tenants_name = tenants.each do |tenant|
#   puts tenant[:name]
# end
#
# apartment_select_rents = apartments.each do |apartment|
#   if apartment[:monthly_rent] < 700
#   puts apartment[:monthly_rent]
#   end
# end
#
# tenant_select_age = tenants.each do |tenant|
#   if tenant[:age] > 44
#   puts tenant[:age]
#   end
# end
#
# tenant_select_id = tenants.each do |tenant|
#   if tenant[:id] == 1
#   puts tenant
#   end
# end
#
# young_to_old = tenants.sort_by {|tenant| tenant[:age]}
#
# alphabetically = tenants.sort_by {|tenant| tenant[:name]}


# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
    # Two arrays, each made up of objects with key-value pairs.
  # What are the properties for each of the two types of hashes
  #   Apartments
  #     ID, Rent, Square feet
  #   Tenants
  #     ID, Name, Age, Apartment ID
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
