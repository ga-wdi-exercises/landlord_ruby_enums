require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"

apartments = data[:apartments]
tenants = data[:tenants]
ruby_apartments = []
ruby_tenants = []

apartments.each do |apartment|
  ruby_apartments << Apartment.new(apartment[:id], apartment[:address], apartment[:monthly_rent], apartment[:square_feet])
end
tenants.each do |tenant|
  ruby_tenants << Tenant.new(tenant[:id], tenant[:name], tenant[:age], tenant[:apartment_id])
end

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes

  #Data is separated into two categories: apartments and tenants
  # - Each apartment has 4 fields:
  #       ID (number), address (string), monthly_rent (number), square_feet (number)
  # - Each tenant has 4 fields:
  #       ID (number), name (string), age (number), apartment_id (number)

# Use enumerables to -
# puts "Print all the addresses for the apartments".upcase
# ruby_apartments.each do |ruby_apartment|
#   puts ruby_apartment.address
# end
#
# puts '# ' * 20
# puts ' '
# puts "Print all the names for tenants".upcase
# ruby_tenants.each do |ruby_tenant|
#   puts ruby_tenant.name
# end
#
# puts '# ' * 20
# puts ' '
# puts "Print only apartments that are less then 700 in rent".upcase
# rent_less_than_700 = ruby_apartments.select do |ruby_apartment|
#   ruby_apartment.monthly_rent < 700
# end
# puts rent_less_than_700.inspect
#
# puts '# ' * 20
# puts ' '
# puts "Print only tenants that are over the age of 44".upcase
# tenants_over_44 = ruby_tenants.select do |ruby_tenant|
#   ruby_tenant.age > 44
# end
# puts tenants_over_44.inspect
#
# puts '# ' * 20
# puts ' '
# puts "Print only tenants that have an apartment id of 1".upcase
# tenants_in_apt_1 = ruby_tenants.find_all { |ruby_tenant| ruby_tenant.apartment_id == 1 }
# puts tenants_in_apt_1.inspect

# puts '# ' * 20
# puts ' '
# puts "Print all the tenants in order from youngest to oldest".upcase
# tenants_descending_by_age = ruby_tenants.sort_by { |ruby_tenant| ruby_tenant.age * -1 }
# puts tenants_descending_by_age.inspect
#
# puts '# ' * 20
# puts ' '
# puts "Print the names of all the tenants alphabetically".upcase
# tenants_alphabetical = ruby_tenants.sort_by { |ruby_tenant| ruby_tenant.name }
# puts tenants_alphabetical.inspect
#
# ## More challenging
#
# puts '# ' * 20
# puts ' '
# puts "When printing tenants also print out the address that the tenant resides in.".upcase
# ruby_tenants.each do |ruby_tenant|
#   name = ruby_tenant.name
#   tenant_apt_id = ruby_tenant.apartment_id
#   apt = ruby_apartments.select { |ruby_apartment| ruby_apartment.id == tenant_apt_id }
#   address = apt[0].address #note: apt is an array, so you must select the element you want to access the hash attributes
#   puts "#{name.to_s} lives at #{address}."
# end
#
# puts '# ' * 20
# puts ' '
# puts "When printing all apartments, under each apartment print all of its tenants.".upcase
# ruby_apartments.each do |ruby_apartment|
#   apt_id = ruby_apartment.id
#   tenants_in_apt = ruby_tenants.select { |ruby_tenant| ruby_tenant.apartment_id == apt_id }
#   puts "Apartment #{apt_id.to_s}:"
#   tenants_in_apt.each do |tenant|
#     puts tenant.name
#   end
#   puts ' '
# end


input = ""

until input == 'exit'
  puts ' '
  puts "Hi Mr. Pizza! What would you like to do? Options: \n
  (1) List all apartments. \n
  (2) List all tenants. \n
  (3) View occupancy report. \n
  (4) Look up a specific tenant. \n
  (5) Remove a tenant from an apartment. \n
  (6) Add an existing tenant to an apartment. \n
  (7) Add a new apartment. \n
  (8) Add a new tenant. \n
  Type 'exit' to exit the program."
  puts ' '

  input = gets.chomp

  if input == "1"
    puts ' '
    #list all apartments in terminal
    puts "Printing all the addresses for the apartments..."
    ruby_apartments.each do |ruby_apartment|
      puts ruby_apartment.address
    end
  elsif input == "2"
    puts ' '
    #list all tenants in terminal
    puts "Printing all the names for tenants..."
    ruby_tenants.each do |ruby_tenant|
      puts ruby_tenant.name
    end
  elsif input == "3"
    #list all apartments and the tenants in them
    puts ' '
    puts "Printing all apartments with list of tenants in each one..."
    ruby_apartments.each do |apartment|
      apt_id = apartment.id
      tenants_in_apt = ruby_tenants.select { |tenant| tenant.apartment_id == apt_id }
      puts ' '
      puts ' '
      puts ' '
      puts "Apartment #{apt_id.to_s}, Address: #{apartment.address.to_s}"
      puts ' '
      tenant_names = tenants_in_apt.each do |tenant|
        puts tenant.name
      end
    end
  elsif input == "4"
    #ask for a tenant's name
    #return the tenant from the tenants array
    puts ' '
    puts "Which tenant would you like to look up?"
    tenant_to_find = gets.chomp
    puts ' '
    puts "Finding #{tenant_to_find}..."
    tenant_found = ruby_tenants.select { |tenant| tenant.name == tenant_to_find }
    tenant_apartment_id = tenant_found[0].apartment_id
    tenant_apartment = ruby_apartments.select { |apartment| apartment.id == tenant_apartment_id }
    puts "#{tenant_to_find} lives at #{tenant_apartment[0].address.to_s}, Apartment ID: #{tenant_apartment_id}"
  elsif input == "5"

  elsif input == "6"

  elsif input == "7"

  elsif input == "8"
  end


end

puts 'Exiting program...'
