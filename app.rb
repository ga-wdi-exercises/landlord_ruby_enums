require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]
require_relative "models/apartment"
require_relative "models/tenant"

ruby_apartments = apartments.map do |a|
  Apartment.new a[:id], a[:address], a[:monthly_rent], a[:square_feet]
end

ruby_tenants = tenants.map do |t|
  Tenant.new t[:id], t[:name], t[:age], t[:apartment_id]
end

puts "Good day, Mr. Pizza. What would you like to do?"
puts "1. List apartments"
puts "2. List tenants"
input = gets.chomp.to_i

if input == 1
  ruby_apartments.each{|a| p a}
elsif input == 2
  ruby_tenants.each{|t| p t}
end


# # Use enumerables to -
#   # Print all the addresses for the apartments
#   addresses = ruby_apartments.map{|apartment| apartment.address}
#     puts addresses
#   # Print all the names for tenants
#   names = ruby_tenants.map{|tenant | tenant.name}
#     puts names
#   # Print only apartments that are less then 700 in rent
#   studio = ruby_apartments {|apartment| apartment.monthly_rent < 700}
#     puts studio
#   # Print only tenants that are over the age of 44
#   older = ruby_tenants.select{|tenant| tenant.age > 44}
#     puts older
#   # Print only tenants that have an apartment id of 1
#   id_1 = ruby_tenants.select{|tenant| tnant.id == 1}
#     puts id_1
#   # Print all the tenants in order from youngest to oldest
#   tenants.sort_by! do |young_to_old|
#     puts [:age]
#   # Print the names of all the tenants alphabetically
#   tenants.sort_by! do |names_alpha|
#     puts [:name]
  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.

  # When printing all apartments, under each apartment print all of its tenants
