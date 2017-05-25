require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes


# Use enumerables to -
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





# Here the data class structure has two variables 
# containing an array of hashes.

# The propeties are every with the symbol ":" IE: ":address"

  # apartment = apartments.each {|address| print address[:address]}
  
  

# puts "Options from app.rb for apartments"

# loop do 
#   input = gets.chomp
#   case input
#   when address
#     apartments.each {|address| print address[:address]}
#   when address under 700
#     apartments.each_with_index {
#   |address, index| if index < 700
#    print "#{address}" 
# }
#     end
# end

# puts "Options from app.rb for tenants" 
# loop do
# input = gets.chomp
# case input
# when names
# tenant = tenants.each {|names| print names[:name]}
# when tenants over 44
# tenants.each_with_index {
# |tenant, index| if index > 44
# print "#{tenant}"
# }
# 
# 
# 

# For getting under 700, Each_with_index seems to be working,
# Though I am sure it should be doing it for a multitude of numbers.

# Using .select is invalid "# apartment.select{|number| number[:monthly_rent] <= 700}"
# .find and nesting a if/elsif inside to get 700 undernot valid methods. 
























