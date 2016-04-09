require_relative "data"
require_relative "models/apartments"
require_relative "models/tenants"

apartments = data[:apartments]
tenants = data[:tenants]

ruby_apartments = []
ruby_tenants = []

apartments.each {|apartment| apt = Apartment.new(apartment[:id], apartment[:address], apartment[:monthly_rent], apartment[:square_feet]); ruby_apartments << apt}
tenants.each {|tenant| ten = Tenant.new(tenant[:id], tenant[:name], tenant[:age], tenant[:apartment_id]); ruby_tenants << ten}

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
# Explain how the data is structured
  # It is in two arrays, tenants and apartments.

# What are the properties for each of the two types of hashes
  # Within apartments, each apartment is a hash with the properties id, address,
  # monthly rent, and square feet. Within tenants, each tenant is a hash
  # with the properties id, name, age, and apartment id.

# Use enumerables to -
  # Print all the addresses for the apartments
# ruby_apartments.each {|apartment| puts apartment.address}

  # Print all the names for tenants
# ruby_tenants.each {|tenant| puts tenant.name}

  # Print only apartments that are less then 700 in rent
# cheap = ruby_apartments.select {|apartment| apartment.monthly_rent < 700}
# cheap.each {|apartment| puts apartment.id, apartment.address, apartment.monthly_rent, apartment.square_feet; puts '*' * 60}

  # Print only tenants that are over the age of 44
# older = ruby_tenants.select {|tenant| tenant.age > 44}
# older.each {|res| puts res.id, res.name, res.age, res.apartment_id; puts '*' * 60}

  # Print only tenants that have an apartment id of 1
# apartment_1 = ruby_tenants.select {|tenant| tenant.apartment_id == 1}
# apartment_1.each {|res| puts res.id, res.name, res.age, res.apartment_id; puts '*' * 60}

  # Print all the tenants in order from youngest to oldest
# old_to_young = ruby_tenants.sort_by {|tenant| tenant.age}
# old_to_young.each {|res| puts res.id, res.name, res.age, res.apartment_id; puts '*' * 60}

  # Print the names of all the tenants alphabetically
# names = ruby_tenants.map {|tenant| tenant.name}
# puts names.sort

  # More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # ruby_tenants.each do |tenant|
  #   print tenant.name
  #   apart = ruby_apartments.find {|apartment| apartment.id == tenant.apartment_id}
  #   puts ' - ' + apart.address.to_s
  # end

  # When printing all apartments, under each apartment print all of its tenants
# ruby_apartments.each do |apartment|
#   puts '*' * 60
#   print apartment.id, ' ', apartment.address, ' ', apartment.monthly_rent, ' ', apartment.square_feet
#   tenants_in_apartment = ruby_tenants.select {|tenant| tenant.apartment_id == apartment.id}
#   tenants_in_apartment.each {|person| puts ''; print '  ', person.id, ' ', person.name, ' ', person.age, ' ', person.apartment_id}
#   puts ''
# end

choice = nil
while choice != 'q'

  puts ''
  puts '*' * 60
  puts ''
  puts "Please choose from the following options:"
  puts "1) View all apartments"
  puts "2) View all tenants"
  puts "3) View apartments with tenant lists"
  puts "4) Look up apartment from tenant name"
  puts "5) Remove tenant from system"
  puts "6) Create new tenant"
  puts "7) Create new apartment"
  puts "q) Exit the program"
  puts ''
  puts '*' * 60
  puts ''

  choice = nil
  while ![1, 2, 3, 4, 5, 6, 7, 'q'].include? choice
    choice = (gets.chomp)
    choice = choice.to_i unless choice == 'q'
  end

  case choice
  when 1
    puts 'All apartments'
    puts 'ID    | Address                  | Rent   | Sq Footage'
    puts '*' * 50
    ruby_apartments.each do |apartment|
      print apartment.id, (' ' * (6-apartment.id.to_s.length)), '| ',
        apartment.address, (' ' * (25-apartment.address.to_s.length)), '| ',
        apartment.monthly_rent, (' ' * (7-apartment.monthly_rent.to_s.length)), '| ',
        apartment.square_feet
      puts ''
    end
  when 2
    puts 'All tenants'
    puts 'ID    | Name                   | Age   | Apartment ID'
    puts '*' * 50
    ruby_tenants.each do |tenant|
      print tenant.id, (' ' * (6-tenant.id.to_s.length)), '| ',
        tenant.name, (' ' * (23-tenant.name.to_s.length)), '| ',
        tenant.age, (' ' * (6-tenant.age.to_s.length)), '| ',
        tenant.apartment_id
      puts ''
    end
  when 3
    puts 'Apartments with tenant lists'
    ruby_apartments.each do |apartment|
      print apartment.id, ' --- ',
      apartment.address, ' --- ',
      apartment.monthly_rent, ' --- ',
      apartment.square_feet
      puts ''
      tenants_in_apartment = ruby_tenants.select {|tenant| tenant.apartment_id == apartment.id}
      tenants_in_apartment.each {|person| print '  '; puts person.name.to_s + ' ' + person.age.to_s}
    end
  when 4
    puts "What is the tenant's name?"
    raw_lookup = gets.chomp
    tenant_lookup = raw_lookup.split.map(&:capitalize).join(' ')
    apt_lookup = nil
    ruby_tenants.each do |tenant|
      if tenant.name.to_s == tenant_lookup
        apt_lookup = tenant.apartment_id
      end
    end
    ruby_apartments.each do |apartment|
      if apartment.id == apt_lookup
        puts tenant_lookup + ' is renting ' + apartment.address + '.'
      end
    end
  when 5
    puts "Which tenant would you like to remove?"
    raw_lookup = gets.chomp
    puts "Would you like to remove all tenants from their apartment? (y/n)"
    all_lookup = gets.chomp
    all_apt_id = nil
    tenant_lookup = raw_lookup.split.map(&:capitalize).join(' ')
    ruby_tenants.each do |tenant|
      if tenant.name.to_s == tenant_lookup
        all_apt_id = tenant.apartment_id
        ruby_tenants.delete(tenant)
      end
    end
    if all_lookup == 'y'
      ruby_tenants.each do |tenant|
        if tenant.apartment_id == all_apt_id
          ruby_tenants.delete(tenant)
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
    new_guy = Tenant.new(new_id, new_name, new_age, new_apt_id)
    ruby_tenants.push(new_guy)
  when 7
    puts "Please enter the ID number of the new apartment."
    new_id = gets.chomp.to_i
    puts "Please enter the address of the new apartment."
    new_address = gets.chomp
    puts "Please enter the monthly rent."
    new_rent = gets.chomp.to_i
    puts "Please enter the square footage."
    new_footage = gets.chomp.to_i
    new_place = Apartment.new(new_id, new_address, new_rent, new_footage)
    ruby_apartments.push(new_place)
  end
end
