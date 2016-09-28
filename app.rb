require "pry"
require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]
tenants_age = data[:age]
# monthly_rent = data[:monthly_rent]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes

# Use enumerables to -
  # Print all the addresses for the apartments
  address = apartments.each do |hash|
    puts hash[:address]
  end
  # Print all the names for tenants
name = tenants.each do |hash|
  puts hash[:name]
end
  # Print only apartments that are less then 700 in rent
less_than700 = apartments.each do |hash|
  if(hash[:monthly_rent]<700)
    p hash[:monthly_rent]
  end
end

  # Print only tenants that are over the age of 44
  tenants_over44 = tenants.each do |hash|
    if(hash[:age] > 44)
      p hash[:name]
    end
  end
  # Print only tenants that have an apartment id of 1
  tenant_id1 = tenants.each do |hash|
    if(hash[:id] ==1)
    p hash[:id]
    end
end
  # Print all the tenants in order from youngest to oldest
# index = 0
# while index < apartments.length
#   tenants.each do |hash|
#     puts data[:age]
#   index +=1
# end
# # p tenants
# end
tenants.each do |hash|
  puts :name
end
  # Print the names of all the tenants alphabetically




  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants
binding.pry
