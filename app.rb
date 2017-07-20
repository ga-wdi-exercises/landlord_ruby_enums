require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
apartments = data[:apartments]
tenants = data[:tenants]
ruby_apartments = []
ruby_tenants = []

ruby_apartments = apartments.map{ |x| Apartment.new(x[:id], x[:address], x[:monthly_rent], x[:square_feet])}
ruby_tenants = tenants.map{ |x| Tenant.new(x[:id], x[:name], x[:age], x[:apartment_id])}

puts Apartment.all

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # Both sets of data are stored in an array of hashes.
  # What are the properties for each of the two types of hashes
  # Properties of "apartments": id, address, monthly_rent, and square feet
  # Properties of tenats: id, name, age, and apartment ID which relates to the apartment data set

# Use enumerables to -
  # # Print all the addresses for the apartments
#   puts "Apartment Addresses--------------------------"
#   # addresses = apartments.map{ |x| x[:address]}
#   # puts addresses
#   ruby_apartments.each{ |x| puts x.address }
#   # # Print all the names for tenants
#   puts "Tenant Names---------------------------------"
#   # tenant_names = tenants.each{ |x| puts x[:name]}
#   # puts tenant_names
#   ruby_tenants.each{ |x| puts x.name }
#   # # Print only apartments that are less then 700 in rent
#   puts "Cheap Apartments-----------------------------"
#   # cheap_apartments = apartments.select{ |x| x[:monthly_rent] < 700 }
#   # puts cheap_apartments
#   ruby_apartments.select{ |x| x.monthly_rent < 700 }.each{ |x| puts x.address }
#   # # Print only tenants that are over the age of 44
#   puts "Old Tennats----------------------------------"
#   # old_tenants = tenants.select{ |x| x[:age] > 44 }
#   # puts old_tenants
#   ruby_tenants.select{ |x| x.age > 44 }.each{ |x| puts x.name }
#   # # Print only tenants that have an apartment id of 1
#   puts "Tenants with Apt ID of 1---------------------"
#   # apt_id_one = tenants.select{ |x| x[:apartment_id] == 1}
#   # puts apt_id_one
#   ruby_tenants.select{ |x| x.apartment_id == 1}.each{ |x| puts x.name}
#   # # Print all the tenants in order from youngest to oldest
#   puts "Tenants, oldest to youngest------------------"
#   # young_to_old = tenants.sort_by{ |x| x[:age]}
#   # puts young_to_old
#   ruby_tenants.sort_by{ |x| x.age }.each{ |x| puts "#{x.name}, age #{x.age}"}
#   # # Print the names of all the tenants alphabetically
#   puts "Tenants, alphabetically----------------------"
#   # tenants_by_name = tenants.sort_by{ |x| x[:name]}
#   # puts tenants_by_name
#   ruby_tenants.sort_by{ |x| x.name}.each{ |x| puts x.name}
#   # ## More challenging
#   # # When printing tenants also print out the address that the tenant resides in.
#   puts "Tenants and their address---------------------"
#   # for i in tenants do
#   #   i[:apartment] = nil
#   #   tenant_apt_id = i[:apartment_id]
#   #   apts = apartments.find{ |x| x[:id] == tenant_apt_id}
#   #   i[:apartment] = apts[:address]
#   #   puts i
#   # end
#   ruby_tenants.each do |x|
#     apt_id = x.apartment_id
#     apt = ruby_apartments.find_all{ |y| y.id == apt_id }.map{ |z| z.address}
#     puts "#{x.name} lives at #{apt}"
#   end
#   # # # When printing all apartments, under each apartment print all of its tenants
#   puts "Apartments and their Tenants------------------"
#   # for i in apartments do
#   #   i[:tenants] = nil
#   #   apt_id = i[:id]
#   #   apt_tenants = tenants.find_all{ |x| x[:apartment_id] == apt_id}
#   #   i[:tenants] = apt_tenants.map{ |x| x[:name]}
#   #   puts i
#   # end
#   ruby_apartments.each do |x|
#     apt_id = x.id
#     tens = ruby_tenants.find_all{ |y| y.apartment_id == apt_id}.map{ |z| z.name}
#     if tens.length == 0
#       puts "No one lives at #{x.address}."
#     else
#       puts "#{tens} live at #{x.address}."
#     end
#   end
# # App

puts '------------------'
puts '   Landlord App'
puts '------------------'

puts 'Options:'
puts '[1] View all apartments.'
puts '[2] View all tenants.'
puts '[3] View all apartments with their tenents'
puts '[4] View tenant address.'
puts '[5] Remove tenant from apartment.'
puts '[6] Add tenant to apartment.'
puts '[7] Add new apartment.'
puts '[8] Add new tenant.'
#
input = gets.chomp
if input == '1'
  ruby_apartments.each{|x| puts "Apartment #{x.id}: #{x.address}, rent: $#{x.monthly_rent}, square feet: #{x.square_feet}"}
elsif input == '2'
  ruby_tenants.each{|x| puts "Tenant #{x.id}: #{x.name}, age: #{x.age}, apartment id: #{x.apartment_id}"}
elsif input == '3'
  ruby_apartments.each do |x|
    apt_id = x.id
    tens = ruby_tenants.find_all{ |y| y.apartment_id == apt_id}.map{ |z| z.name}
    if tens.length == 0
      puts "No one lives at #{x.address}."
    else
      puts "#{tens} live at #{x.address}."
    end
  end
#   for i in apartments do
#     i[:tenants] = nil
#     apt_id = i[:id]
#     apt_tenants = tenants.find_all{ |x| x[:apartment_id] == apt_id}
#     i[:tenants] = apt_tenants.map{ |x| x[:name]}
#     puts "Appartment: #{i[:address]},   tenants: #{i[:tenants].join(', ')}"
#   end
#
elsif input == '4'
  puts 'Enter tenant name'
  ten_name = gets.chomp
  tenant = ruby_tenants.find{ |x| x.name == ten_name }
  ten_apt_id = tenant.apartment_id
  puts ten_apt_id
  ten_address = ruby_apartments.find{ |x| x.id == ten_apt_id}
  puts "#{ten_name} lives at #{ten_address.address}"
#   ten_with_apt = []
#   for i in tenants do
#     i[:apartment] = nil
#     tenant_apt_id = i[:apartment_id]
#     apts = apartments.find{ |x| x[:id] == tenant_apt_id}
#     i[:apartment] = apts[:address]
#     ten_with_apt << i
#   end
#   answer = ten_with_apt.find_all{|x| x[:name] == ten_name}
#   puts "Adress is: #{answer[0][:apartment]}"
#
elsif input == '5'
  puts 'Enter tenant name'
  ten_name = gets.chomp
  found_ten = ruby_tenants.find{ |x| x.name == ten_name }
  found_ten.apartment_id = 0
  puts 'Tenant removed'.
  # found_ten = tenants.find{ |x| x[:name] == ten_name }
  # found_ten[:apartment_id] = 0
  # puts found_ten
  # puts 'Tenant removed.'

elsif input == '6'
  puts 'Enter tenant name'
  ten_name = gets.chomp
  puts 'Enter apartment address'
  new_apt = gets.chomp
  found_ten = ruby_tenants.find{ |x| x.name == ten_name}
  found_address = ruby_apartments.find{ |x| x.address == new_apt}
  found_ten.apartment_id = found_address.id
  puts "Tenant added."
  # new_apt_id = apartments.find{ |x| x[:address] == new_apt}
  # new_apt_id = new_apt_id[:id]
  # tenant_to_add = tenants.find{ |x| x[:name] == ten_name}[:apartment_id] = new_apt_id
  # puts "Tenant added to #{new_apt}."
  # puts tenants.find{|x| x[:name] == ten_name}

elsif input == '7'
  puts 'Enter information for new apartment'
  puts 'Id:'
  new_id = gets.chomp
  puts 'Address:'
  new_address = gets.chomp
  puts 'Rent:'
  new_rent = gets.chomp
  puts 'Square Footage:'
  new_sq_ft = gets.chomp
  new_apt = Apartment.new(new_id, new_address, new_rent, new_sq_ft)
  ruby_apartments << new_apt
  puts "New apartment was added"
  # new_apt = {
  #   id: new_id,
  #   address: new_address,
  #   monthly_rent: new_rent,
  #   square_feet: new_sq_ft
  # }
  # apartments << new_apt
  # puts new_apt
  # puts 'New apartment was added'

elsif input == '8'
  puts 'Enter new tenant information'
  puts 'Id:'
  new_id = gets.chomp
  puts 'Name:'
  new_name = gets.chomp
  puts 'Age:'
  new_age = gets.chomp
  puts 'Apartment Id:'
  new_apt_id = gets.chomp
  new_ten = Tenant.new(new_id, new_name, new_age, new_apt_id)
  ruby_tenants << new_ten
  puts "New tenant was added"
  # new_tenant = {
  #   id: new_id,
  #   name: new_name,
  #   age: new_age,
  #   apartment_id: new_apt_id
  # }
  # tenants << new_tenant
  # puts new_tenant
  # puts 'New tenant was added'
end
