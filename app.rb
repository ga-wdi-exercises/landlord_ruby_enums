#come back to part 1 more challenging if time allows

require 'pry'

require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]


# index = 0
# while index < apartments.length
#   puts apartments[index][:address]
#   index += 1
# end

# index = 0
# while index < tenants.length
#   puts tenants[index][:name]
#   index += 1
# end

# index = 0
# while index < apartments.length
#   if apartments[index][:monthly_rent] < 700
#     puts apartments[index][:id]
#     index += 1
#   else
#    index += 1
#  end
# end

# index = 0
# while index < tenants.length
#   if tenants[index][:age] > 44
#     puts tenants[index][:name]
#     index += 1
#   else
#    index += 1
#  end
# end

# index = 0
# while index < tenants.length
#   if tenants[index][:apartment_id] == 1
#     puts tenants[index][:name]
#     index += 1
#   else
#     index += 1
#  end
# end
#
# index = 0
# while index < tenants.length
#   if tenants[index][:apartment_id] == 1
#     puts tenants[index][:name]
#     index += 1
#   else
#     index += 1
#  end
# end

# puts tenants.sort_by{|tenant| tenant[:age]}

# puts tenants.sort_by{|tenant| tenant[:name]}


# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes

# Use enumerables to -
  # 1 Print all the addresses for the apartments
  # 2 Print all the names for tenants
  # 3 Print only apartments that are less then 700 in rent
  # 4 Print only tenants that are over the age of 44
  # 5 Print only tenants that have an apartment id of 1
  # 6 Print all the tenants in order from youngest to oldest
  # 7 Print the names of all the tenants alphabetically

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants

  binding.pry
