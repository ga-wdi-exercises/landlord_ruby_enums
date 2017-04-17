require_relative "models/apartment"
require_relative "models/tenant"


require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]


The data is structured into 2 arrays classed as apartments and tenants
The apartment array contains properties including id,address, monthly_rent,and square_feet
The tenant array is contains properties including id, name, age, apartment_id
# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes

# Use enumerables to - # Print all the addresses for the apartments
apartments = ["address"]
apartments.each do |user|
puts user
end


# Print all the names for tenants
tenants = ["name"]
tenants.each do |name|
puts tenant
end



# Print only apartments that are less then 700 in rent
apartment_address = ["9841 Tanner Key","630 McDermott Islands","2100 Mitchel Valleys","37899 Kutch Corners","29724 Ryan Ranch","80498 Mafalda Extensions","72108 Leuschke Greens"]
puts apartment_address
puts apartment_address.inspect

apartment_id.each do |e|
    puts e
end

# Print only tenants that are over the age of 44
tenant_name= ["Ms. Maryse Farrell","Jordan Cremin DDS","Haven Abbott","Roxane Walter","Dr. Everett Kuhn","Miss Flavio Wyman","Mathilde Beatty","Randall Crist Sr.","Connor Kunze","Dessie McLaughlin","Buck Jacobs PhD","Una Kulas","Elenora Dibber","Lavern Ruecker","Dolly Davis","Jaida Runte","Elmo Wilkinson Sr.","Mrs. Cloyd Swift","Albin Treutel","Thad Spinka","Emmanuelle Koss","Hope Reilly","Domenic Hauck","Assunta Wintheiser","Evalyn Durgan","Miss Jed Murazik","Miss Abbie Wolf","Gene Purdy","Ezequiel Powlowski","Mikel Bashirian Sr.","Mrs. Rosie Labadie","Lacey Gerhold","Dr. Ruby Mayer","Elody Bogisich MD","Raven McGlynn","Rowland Wiegand","Rigoberto Armstrong IV"]
puts tenant_name
puts tenant_name.inspect

tenant_name.each do |e|
  puts e
end

# Print only tenants that have an apartment id of 1
tenant = [:id=>1, :name=>"Ms. Maryse Farrell", :age=>87, :apartment_id=>8]
puts Ms Maryse Farrell
end


  # Print all the tenants in order from youngest to oldest
tenants.sort { |a, b| a[:age] <=> b[:age] }
   youngest to oldest


# Print the names of all the tenants alphabetically
tenants.sort { |a, b| a|[:name] <=> b[:name] }
   alphabetically

  # Print all the addresses for the apartments
  # Print all the names for tenants
  # Print only apartments that are less then 700 in rent
  # Print only tenants that are over the age of 44
  # Print only tenants that have an apartment id of 1
  # Print all the tenants in order from youngest to oldest
  # Print the names of all the tenants alphabetically

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants

part 2

landlord_app.#!/usr/bin/env ruby -wKU
