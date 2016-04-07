require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
# Explain how the data is structured
  # It is in two arrays, tenants and apartments.

# What are the properties for each of the two types of hashes
  # Within apartments, each apartment is a hash with the properties id, address,
  # monthly rent, and square feet. Within tenants, each tenant is a hash
  # with the properties id, name, age, and apartment id.

# Use enumerables to -
  # Print all the addresses for the apartments
# apartments.each {|apartment| puts apartment[:address]}

  # Print all the names for tenants
# tenants.each {|tenant| puts tenant[:name]}

  # Print only apartments that are less then 700 in rent
# puts apartments.select {|apartment| apartment[:monthly_rent] < 700}

  # Print only tenants that are over the age of 44
# puts tenants.select {|tenant| tenant[:age] > 44}

  # Print only tenants that have an apartment id of 1
# puts tenants.select {|tenant| tenant[:apartment_id] == 1}

  # Print all the tenants in order from youngest to oldest
# puts tenants.sort_by {|tenant| tenant[:age]}

  # Print the names of all the tenants alphabetically
# names = tenants.map {|tenant| tenant[:name]}
# puts names.sort

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
# tenants.each do |tenant|
#   puts tenant
#   apart = apartments.select {|apartment| apartment[:id] == tenant[:apartment_id]}
#   puts apart[0][:address]
# end

  # When printing all apartments, under each apartment print all of its tenants
# apartments.each do |apartment|
#   puts '', apartment
#   tenants_in_apartment = tenants.select {|tenant| tenant[:apartment_id] == apartment[:id]}
#   tenants_in_apartment.each {|person| print '  '; puts person}
# end

puts "Please choose from the following options:"
puts "1) View all apartments"
puts "2) View all tenants"
puts "3) View apartments with tenant lists"
puts "4) Look up apartment from tenant name"
choice = nil
while ![1, 2, 3, 4].include? choice
  choice = (gets.chomp).to_i
end

case choice
when 1
  puts 'All apartments'
  puts 'ID    | Address                  | Rent   | Sq Footage'
  puts '*' * 50
  apartments.each do |apartment|
    print apartment[:id], (' ' * (6-apartment[:id].to_s.length)), '| ',
      apartment[:address], (' ' * (25-apartment[:address].to_s.length)), '| ',
      apartment[:monthly_rent], (' ' * (7-apartment[:monthly_rent].to_s.length)), '| ',
      apartment[:square_feet]
    puts ''
  end
when 2
  puts 'All tenants'
  puts 'ID    | Name                   | Age   | Apartment ID'
  puts '*' * 50
  tenants.each do |tenant|
    print tenant[:id], (' ' * (6-tenant[:id].to_s.length)), '| ',
      tenant[:name], (' ' * (23-tenant[:name].to_s.length)), '| ',
      tenant[:age], (' ' * (6-tenant[:age].to_s.length)), '| ',
      tenant[:apartment_id]
    puts ''
  end
when 3
  puts 'Apartments with tenant lists'
  apartments.each do |apartment|
    print apartment[:id], ' --- ',
    apartment[:address], ' --- ',
    apartment[:monthly_rent], ' --- ',
    apartment[:square_feet]
    puts ''
    tenants_in_apartment = tenants.select {|tenant| tenant[:apartment_id] == apartment[:id]}
    tenants_in_apartment.each {|person| print '  '; puts person[:name].to_s + ' ' + person[:age].to_s}
  end
when 4
  puts "What is the tenant's name?"
  raw_lookup = gets.chomp
  tenant_lookup = raw_lookup.split.map(&:capitalize).join(' ')
  apt_lookup = nil
  tenants.each do |tenant|
    if tenant[:name].to_s == tenant_lookup
      apt_lookup = tenant[:apartment_id]
    end
  end
  apartments.each do |apartment|
    if apartment[:id] == apt_lookup
      puts tenant_lookup + ' is renting ' + apartment[:address] + '.'
    end
  end
end
