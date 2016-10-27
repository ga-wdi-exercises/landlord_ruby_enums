require "pry"

require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes

# ANSWER :
# the data is structured into two hashes, apartments and tenants. Each hash has 4 properties.
#
# Apartments has id, address, monthly_rent, and square_feet
# Tenants has id, name, age, and apartment_id


# Use enumerables to -
  # Print all the addresses for the apartments
def get_all_addresses apartments
  apartments.each {|thisapt| puts "#{thisapt[:address]}"}
end

  # Print all the names for tenants

def get_all_tenants tenants
  tenants.each {|thisguy| puts "#{thisguy[:name]}"}
end

  # Print only apartments that are less then 700 in rent
def rent_less_than apartments, number
  below_thisprice = apartments.select { |price| price[:monthly_rent] < number}
  return below_thisprice
end
  # Print only tenants that are over the age of 44
def people_older_than tenants, number
  above_thisage = tenants.select {|old| old[:age] > 44}
  return above_thisage
end
  # Print only tenants that have an apartment id of 1
def this_id tenants, number
  this_id_list = tenants.select {|this| this[:id] == 1}
  return this_id_list
end
  # Print all the tenants in order from youngest to oldest
def young_to_old tenants
  young_order = tenants.sort_by {|thisage| thisage[:age]}
  return young_order
end
  # Print the names of all the tenants alphabetically
def alphabetical tenants
  young_order = tenants.sort_by {|thisletter| thisletter[:name]}
  return young_order
end

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants


binding.pry
