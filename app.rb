require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes

# Use enumerables to -
  # # Print all the addresses for the apartments
  # apartments.each{|x| puts x[:address]}
  # # Print all the names for tenants
  # tenants.each{|x| puts x[:name]}
  # # Print only apartments that are less then 700 in rent
  # apartments.each{|x| puts x[:monthly_rent] < 700}
  # # Print only tenants that are over the age of 44
  # tenants.each{|x| puts x[:age] > 44}
  # # Print only tenants that have an apartment id of 1
  # tenants.each{|x| puts x[:id] == 1}
  # # Print all the tenants in order from youngest to oldest
  # tenants.sort_by[:age]
  # # Print the names of all the tenants alphabetically
  # tenants.sort_by[:name]

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants

# SILVER

user_input_silver = gets.chomp.to_i

if user_input_silver == apartments[:id]
  if tenants[:apartment_id] == apartment[:id]
    puts "#{tenants[:name]}"
  end
end
