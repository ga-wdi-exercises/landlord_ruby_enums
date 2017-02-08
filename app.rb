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

# Use enumerables to -
# puts "Print all the addresses for the apartments".upcase
# apartments.each do |apartment|
#   puts apartment[:address]
# end
#
# puts '# ' * 20
# puts ' '
# puts "Print all the names for tenants".upcase
# tenants.each do |tenant|
#   puts tenant[:name]
# end
#
# puts '# ' * 20
# puts ' '
# puts "Print only apartments that are less then 700 in rent".upcase
# rent_less_than_700 = apartments.select do |apartment|
#   apartment[:monthly_rent] < 700
# end
# puts rent_less_than_700
#
# puts '# ' * 20
# puts ' '
# puts "Print only tenants that are over the age of 44".upcase
# tenants_over_44 = tenants.select do |tenant|
#   tenant[:age] > 44
# end
# puts tenants_over_44
#
# puts '# ' * 20
# puts ' '
# puts "Print only tenants that have an apartment id of 1".upcase
# tenants_in_apt_1 = tenants.find_all { |tenant| tenant[:apartment_id] == 1 }
# puts tenants_in_apt_1
#
# puts '# ' * 20
# puts ' '
# puts "Print all the tenants in order from youngest to oldest".upcase
# tenants_descending_by_age = tenants.sort_by { |tenant| tenant[:age] * -1 }
# puts tenants_descending_by_age
#
# puts '# ' * 20
# puts ' '
# puts "Print the names of all the tenants alphabetically".upcase
# tenants_alphabetical = tenants.sort_by { |tenant| tenant[:name] }
# puts tenants_alphabetical
#
# ## More challenging
#
# puts '# ' * 20
# puts ' '
# puts "When printing tenants also print out the address that the tenant resides in.".upcase
# tenants.each do |tenant|
#   name = tenant[:name]
#   tenant_apt_id = tenant[:apartment_id]
#   apt = apartments.select { |apartment| apartment[:id] == tenant_apt_id }
#   address = apt[0][:address] #note: apt is an array, so you must select the element you want to access the hash attributes
#   puts "#{name.to_s} lives at #{address}."
# end
#
# puts '# ' * 20
# puts ' '
# puts "When printing all apartments, under each apartment print all of its tenants.".upcase
# apartments.each do |apartment|
#   apt_id = apartment[:id]
#   tenants_in_apt = tenants.select { |tenant| tenant[:apartment_id] == apt_id }
#   puts "Apartment #{apt_id.to_s}"
#   puts tenants_in_apt
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
    apartments.each do |apartment|
      puts apartment[:address]
    end
  elsif input == "2"
    puts ' '
    #list all tenants in terminal
    puts "Printing all the names for tenants..."
    tenants.each do |tenant|
      puts tenant[:name]
    end
  elsif input == "3"
    #list all apartments and the tenants in them
    puts ' '
    puts "Printing all apartments with list of tenants in each one..."
    apartments.each do |apartment|
      apt_id = apartment[:id]
      tenants_in_apt = tenants.select { |tenant| tenant[:apartment_id] == apt_id }
      puts ' '
      puts ' '
      puts ' '
      puts "Apartment #{apt_id.to_s}, Address: #{apartment[:address].to_s}"
      puts ' '
      tenant_names = tenants_in_apt.each do |tenant|
        puts tenant[:name]
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
    tenant_found = tenants.select { |tenant| tenant[:name] == tenant_to_find }
    tenant_apartment_id = tenant_found[0][:apartment_id]
    tenant_apartment = apartments.select { |apartment| apartment[:id] == tenant_apartment_id }
    puts "#{tenant_to_find} lives at #{tenant_apartment[0][:address].to_s}, apartment id: #{tenant_apartment_id}"
  elsif input == "5"

  elsif input == "6"

  elsif input == "7"

  elsif input == "8"
  end


end

puts 'Exiting program...'
