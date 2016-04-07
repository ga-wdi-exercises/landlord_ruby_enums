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
puts "5) Remove tenant from system"
puts "6) Create new tenant"
puts "7) Create new apartment"
choice = nil
while ![1, 2, 3, 4, 5, 6, 7].include? choice
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
when 5
  puts "Which tenant would you like to remove?"
  raw_lookup = gets.chomp
  puts "Would you like to remove all tenants from their apartment? (y/n)"
  all_lookup = gets.chomp
  all_apt_id = nil
  tenant_lookup = raw_lookup.split.map(&:capitalize).join(' ')
  tenants.each do |tenant|
    if tenant[:name].to_s == tenant_lookup
      all_apt_id = tenant[:apartment_id]
      tenants.delete(tenant)
    end
  end
  if all_lookup = 'y'
    tenants.each do |tenant|
      if tenant[:apartment_id] == all_apt_id
        tenants.delete(tenant)
      end
    end
  end
when 6
  puts "Please enter the name of the tenant you would like to add."
  new_name = gets.chomp
  puts "Please enter the age of the tenant you would like to add."
  new_age = gets.chomp.to_i
  puts "Please enter the apartment ID of the tenant you would like to add."
  new_apt_id = gets.chomp.to_i
  puts "Please enter the ID number of the tenant you would like to add."
  new_id = gets.chomp.to_i
  tenants.push({:id=> new_id, :name=> new_name, :age=> new_age, :apartment_id=> new_apt_id})
  puts tenants
when 7
  puts "Please enter the ID number of the new apartment."
  new_id = gets.chomp.to_i
  puts "Please enter the address of the new apartment."
  new_address = gets.chomp
  puts "Please enter the monthly rent."
  new_rent = gets.chomp.to_i
  puts "Please enter the square footage."
  new_footage = gets.chomp.to_i
  apartments.push({:id=> new_id, :address=> new_address, :monthly_rent=> new_rent, :square_feet=> new_footage})
  puts apartments
end
