require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

def get_user_input 
  gets.chomp
end

puts "Hello!"
puts "Enter 1 to view apartments."
get_user_input
if input == 1
  apartments.each do |apartment|
    puts apartment[:address]
  end

def apartment_app data
puts "Enter 2 to view tenants."
  input = get_user_input
  start_app

  end
end
#   # check if input is equal to state capital
#     # increment correct score
#     state[:correct] += 1
#   # if its not
#   else
#     # increment incorrect score
#     state[:incorrect] +=1
#   end
# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:

# Explain how the data is structured
# The data is structured as a variable "data". Data is broken down into two arrays; apartments and tenants. Each array is further proken down into hashes with four key-value pairs each.

# What are the properties for each of the two types of hashes
#The properties for the hashes are; id, name, age, and apartment_id.


# Use enumerables to -

# Print all the addresses for the apartments
# apartments.each do |apartment|
#   puts apartment[:address]
# end

#  Print all the names for tenants
# tenants.each do |tenant|
#   puts tenant[:name]
# end

# Print only apartments that are less then 700 in rent
# less_apartments = apartments.select do |apartment|
#   apartment[:monthly_rent] < 700
# end
# puts less_apartments

# Print only tenants that are over the age of 44
# old_tenants = tenants.select do |tenant|
#   tenant[:age] > 44
# end
# puts old_tenants

# Print only tenants that have an apartment id of 1
# id_1 = tenants.select do |tenant|
#     tenant[:id] == 1
# end
# puts id_1

# Print all the tenants in order from youngest to oldest
# young_old_tenants = tenants.sort_by do |tenant|
#   puts tenant[:age]
# end

# Print the names of all the tenants alphabetically
# alphabetical_tenants = tenants.sort_by do |a, b|
#   a[:name].downcase <=> b[:name].downcase
# end
# puts alphabetical_tenants
## More challenging
# When printing tenants also print out the address that the tenant resides in.
# When printing all apartments, under each apartment print all of its tenants
