require "pry"
require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]
# Use enumerables to -
 # Print all the addresses for the apartments
 apartments_addresses = apartments.map {|apartment| apartment[:address]}
 puts apartments_addresses
 # Print all the names for tenants
 tenants_names = tenants.map {|tenant| tenant[:name]}
 puts tenants_names
 # Print only apartments that are less then 700 in rent
 apartments_rent = apartments.find_all {|apartment| apartment[:monthly_rent] < 700}
 puts apartments_rent
 # Print only tenants that are over the age of 44
 tenants_ages = tenants.find_all {|tenant| tenant[:age] > 44}
 puts tenants_ages
 # Print only tenants that have an apartment id of 1
 tenants_ids = tenants.find_all {|tenant| tenant[:id] == 1}
 puts tenants_ids
 # Print all the tenants in order from youngest to oldest
 tenants_ages_ordered = tenants.sort_by {|tenant| tenant[:age]}
 puts tenants_ages_ordered
 # Print the names of all the tenants alphabetically
 tenants_oredered = tenants.map {|tenant| tenant[:name]}
 puts tenants_oredered.sort

 ## More challenging
binding.pry
