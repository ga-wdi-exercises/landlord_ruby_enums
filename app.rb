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

apartments.map{|x| ruby_apartments << Apartment.new(x[:id], x[:address], x[:monthly_rent], x[:square_feet])}
tenants.map{|x| ruby_tenants << Tenant.new(x[:id], x[:name], x[:age], x[:apartment_id])}

# Use enumerables to -
# Print all the addresses for the apartments
all_addresses =  ruby_apartments.map {|x| x.address}
# Print all the names for tenants
all_tenants = ruby_tenants.map{|x|  x.name}
# Print only apartments that are less then 700 in rent
apts_rent_und700 = ruby_apartments.select {|x| x.monthly_rent < 700}
# Print only tenants that are over the age of 44
over_age_44 = ruby_tenants.select{|x| x.age > 44}
# Print only tenants that have an apartment id of 1
ten_id_one = ruby_tenants.find{|x| x.id == 1}
# Print all the tenants in order from youngest to oldest
ten_young_old = ruby_tenants.sort{|x, y| x.age <=> y.age}

# Print the names of all the tenants alphabetically
ten_sort_alpha = ruby_tenants.sort{|x, y| x.name <=> y.name}


puts "Hi Bob, what are you looking for? Press the corresponding keys to access the data/n 1: All tenants| 2: All addresses|"
input_one = gets.chomp.to_i
input_one == 1 ? (puts all_tenants) : (puts all_addresses)


## More challenging
# When printing tenants also print out the address that the tenant resides in.
# When printing all apartments, under each apartment print all of its tenants

