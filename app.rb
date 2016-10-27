require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
apartments = data[:apartments]
tenants = data[:tenants]
ruby_apartments = []
ruby_tenants = []

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes

  # Data is stored in two variables, each made up of an array of hashes. All apartments have an id, and all tenants have an id AND an apartment_id. Apartments have address, rent, and sq ft properties, and tenants also have name and age properties.

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants

################## Part 1 Commented Out ##################

  # Print all the addresses for the apartments

  # data[:apartments].each do |apt|
  #   puts "#{apt[:address]}"
  # end
  #
  # # Print all the names for tenants
  #
  # data[:tenants].each do |name|
  #   puts "#{name[:name]}"
  #
  # end
  #
  # # Print only apartments that are less then 700 in rent
  # data[:apartments].each do |apt|
  #   if apt[:monthly_rent] < 700
  #     puts "#{apt}"
  #   end
  # end
  #
  # # Print only tenants that are over the age of 44
  # data[:tenants].each do |name|
  #   if name[:age] > 44
  #     puts "#{name[:name]}, aged #{name[:age]}"
  #   end
  # end
  #
  # # Print only tenants that have an apartment id of 1
  # data[:tenants].each do |name|
  #   if name[:apartment_id] == 1
  #     puts "#{name[:name]}, apt ID 1"
  #   end
  # end
  #
  # # Print all the tenants in order from youngest to oldest
  # agesorted = data[:tenants].sort_by {|a| a[:age]}
  #   puts agesorted
  #
  #   # Print the names of all the tenants alphabetically
  #   namesorted = data[:tenants].sort_by {|a| a[:name]}
  #     puts namesorted

apartments.each do |apt|
  newapt = Apartment.new(apt[:id], apt[:address], apt[:monthly_rent], apt[:square_feet])
  ruby_apartments << newapt
end

tenants.each do |tnt|
  newtenant = Tenant.new(tnt[:id], tnt[:name], tnt[:age], tnt[:apartment_id])
  ruby_tenants << newtenant
end

def menuscreen ruby_tenants, ruby_apartments
puts "###################################################"
puts "Welcome to landlord.ly, the premier landlording app"
puts "###################################################"
puts "1. list all tenants"
puts "2. list all apartments"
puts "3. view apartments with current tenants"
puts "4. search apartment by tenant"
puts "5. remove tenant from apartment"
puts "9. exit"
menu = gets.chomp.to_i
case menu
when 1
  ruby_tenants.each do |name|
    puts "#{name.name}"
  end
  puts ""
  menuscreen ruby_tenants, ruby_apartments
when 2
  ruby_apartments.each do |apt|
    puts "#{apt.address}"
  end
  puts ""
  menuscreen ruby_tenants, ruby_apartments
when 3
  ruby_apartments.each do |apt|
    ruby_tenants.each do |name|
      if apt.id == name.apartment_id
    puts "#{apt.address}, occupied by #{name.name}\n"
  end
end
  end
  puts ""
  menuscreen ruby_tenants, ruby_apartments
when 4
  puts "enter tenant name"
  search = gets.chomp
  ruby_apartments.each do |apt|
    ruby_tenants.each do |name|
  if search == name.name && apt.id == name.apartment_id
    puts "#{name.name} lives at #{apt.address}\n"
end
end
end
puts ""
menuscreen ruby_tenants, ruby_apartments
when 5
  puts "removing tenant: enter tenant name"
  search = gets.chomp
  ruby_tenants.each do |name|
  if search == name.name
    name.apartment_id = nil  #there's gotta be a better way to do this
  end
end
puts "#{search} has been removed"
puts ""
menuscreen ruby_tenants, ruby_apartments

when 9
  puts "enjoy your idle wealth!!"
else
  puts "not a valid response\n\n"
  menuscreen ruby_tenants, ruby_apartments
end
end

menuscreen ruby_tenants, ruby_apartments
