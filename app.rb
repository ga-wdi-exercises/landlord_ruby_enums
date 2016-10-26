require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:

# Explain how the data is structured
# What are the properties for each of the two types of hashes

# --> The apartments hash contains keys and values identifying an apartment by an id, address, its monthly rent and the size of the apartment -- the apartment of the object.

# --> The tenants hash contains information that identifys a tenant by name, a record id, their age and which apartment they are assigned -- the tenant is the object.


# # Use enumerables to -
#   # Print all the addresses for the apartments
#   apartments.each {|apartment| puts apartment[:address]}
#
#   # Print all the names for tenants
#   tenants.each {|tenant| puts tenant[:name]}
#
#   # Print only apartments that are less then 700 in rent
#   cheapapartment = apartments.select {|apartment|  apartment[:monthly_rent] < 700}
#     puts cheapapartment
#
#
#   # Print only tenants that are over the age of 44
#   olderresidents = tenants.select {|tenant| tenant[:age] > 44}
#     puts olderresidents
#
#   # Print only tenants that have an apartment id of 1
#   apartmentid = tenants.select {|tenant| tenant[:apartment_id] == 1}
#     puts apartmentid
#
#   # Print all the tenants in order from youngest to oldest
#   numorder = tenants.sort_by {|tenant| tenant[:age]}
#     puts numorder
#
#   # Print the names of all the tenants alphabetically
#   alphaorder = tenants.sort_by {|tenant| tenant[:name]}
#     puts alphaorder


  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.

  # tenants.each do |tenant|
  #   puts tenant[:name]
  #   apartment = apartments.find {|apartment| tenant[:apartment_id] == apartment[:id]}
  #   puts apartment[:address]
  # end

  # When printing all apartments, under each apartment print all of its tenants
  apartments.each do |apartment|
    puts apartment[:address]
    tenant = tenants.find {|tenant| tenant[:apartment_id] == apartment[:id]}
    tenant.each do |tenant|
      puts tenant[:name]
    end
  end
