require "pry"
require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"

apartments = data[:apartments]
tenants = data[:tenants]
ruby_apartments = []
ruby_tenants = []

#Creating array of apartments instances
apartments.each do |apt|
  values = apt.values
  ruby_apartments << Apartment.new(apt.values[0], apt.values[1], apt.values[2], apt.values[3])
end

#Creating an array of tenants instances
tenants.each do |tena|
  values = tena.values
  ruby_tenants << Tenant.new(tena.values[0], tena.values[1], tena.values[2], tena.values[3])
end

#Part 1
# First, Open the data.rb and inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes

# Use enumerables to -
  # Print all the addresses for the apartments
  # ruby_apartments.each{|unit| puts unit.get_address}

  # Print all the names for tenants
  # ruby_tenants.each{|person| puts person.get_name}

  # Print only apartments that are less then 700 in rent
  # cheap = ruby_apartments.select{|unit| unit.get_monthly_rent < 700}
  # p cheap

  # Print only tenants that are over the age of 44
  # old = ruby_tenants.select{|person| person.get_age > 44}
  # p old

  # Print only tenants that have an apartment id of 1
  # one = ruby_tenants.select{|person| person.get_apartment_id == 1}
  # p one

  # Print all the tenants in order from youngest to oldest
  # youngest_oldest = ruby_tenants.sort_by{|person| person.get_age}
  # p youngest_oldest

  # Print the names of all the tenants alphabetically
  # alphabetically = ruby_tenants.sort_by{|person| person.get_name}
  # alphabetically.each{|per| puts per.get_name}

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants

#Part 2
puts "Welcome, landlord! For apartments type '1', and for tenants type '2'"
user_input = gets.chomp.to_i
if user_input == 1
  p ruby_apartments
elsif user_input == 2
  p ruby_tenants
else
  puts "Sorry, I didn't undersatnd this!"
end

# binding.pry
