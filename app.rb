require "pry"
require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]


puts "Hi, please choose from the list from the following.  Choose 1 to view all apartments and 2 to view all tenants"
choice = gets.chomp


if choice.to_i == 1

  apartments.each do |apartment|
    puts apartment
  end
elsif choice.to_i == 2
  tenants.each do |tenant|
    puts tenant
  end
end
  # this is a list of objects and keys with the tenants address, rent, square feet
  # the properties is tenants, address, rent, square
# if choice === 1
#   puts choice + 1
#   puts "hello"
# end



#
#
#   # Use enumerables to -
#     # Print all the addresses for the apartments
#     # Print all the names for tenants
#     tenants.each do |name|
#       puts tenants.names
#     end
#
#     # Print only apartments that are less then 700 in rent
#
#     while apartments.length < 700
#       puts apartments
#       apartments += 1
#     end
#
#     # Print only tenants that are over the age of 44
#
#     while tenants.age > 44
#       puts tenants
#       tenants += 1
#     end
#
#     # Print only tenants that have an apartment id of 1
#     while tenants.age > 44
#       puts tenants
#       tenants += 1
#     end
#
#     # Print all the tenants in order from youngest to oldest
#
#     tenants.age.sort
#
#     # Print the names of all the tenants alphabetically
#
#     tenants.names.sort
#
#     ## More challenging
#     # When printing tenants also print out the address that the tenant resides in.
#     # When printing all apartments, under each apartment print all of its tenants
#
#
#
# # First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
#   # Explain how the data is structured
#   # What are the properties for each of the two types of hashes
#
# # Use enumerables to -
#   # Print all the addresses for the apartments
#   # Print all the names for tenants
#   # Print only apartments that are less then 700 in rent
#   # Print only tenants that are over the age of 44
#   # Print only tenants that have an apartment id of 1
#   # Print all the tenants in order from youngest to oldest
#   # Print the names of all the tenants alphabetically
#
#   ## More challenging
#   # When printing tenants also print out the address that the tenant resides in.
#   # When printing all apartments, under each apartment print all of its tenants
#
#
#
#
#
#
#   - I should be allowed to remove a tenant from an apartment so that I can track evictions/lease ends
#
#
#
#   - I should be allowed to add a tenant to an apartment so that I can track occupancy.
#   - I should be allowed to create a new apartment so that I can track new properties in my books
#   - I should be allowed to create a new tenant so that I can track new tenants in my books.
binding.pry
