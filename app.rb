require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
# Explain how the data is structured
# What are the properties for each of the two types of hashes

# Use enumerables to -
# Print all the addresses for the apartments
all_addresses =  apartments.map{|x|  x[:address]}
# Print all the names for tenants
all_tenants = tenants.map{|x|  x[:name]}
# Print only apartments that are less then 700 in rent
apts_rent_und700 = apartments.select {|x| x[:monthly_rent] < 700}
# Print only tenants that are over the age of 44
over_age_44 =tenants.select{|x| x[:age] > 44}
# Print only tenants that have an apartment id of 1
ten_id_one = tenants.find{|x| x[:id] == 1}
# Print all the tenants in order from youngest to oldest
ten_young_old = tenants.sort{|x, y| x[:age] <=> y[:age]}

# Print the names of all the tenants alphabetically
ten_sort_alpha = tenants.sort{|x, y| x[:name] <=> y[:name]}

## More challenging
# When printing tenants also print out the address that the tenant resides in.
# When printing all apartments, under each apartment print all of its tenants
puts "Hi Bob, what are you looking for? Press the corresponding keys to access the data/n 1: All tenants| 2: All addresses|"
input_one = gets.chomp
def return_output(n)

if n == 1
  p all_tenants 
elsif n == 2
  p all_addresses
end
end
p return_output(input_one)
