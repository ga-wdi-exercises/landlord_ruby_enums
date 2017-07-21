require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured

  # The data structured in 2 objects names every object have 4 domains

  # What are the properties for each of the two types of hashes

  # hash apartments: id, address, monthly_rent, square_feet
  # hash tenant : id, name, age, apartment_id

# Use enumerables to -


  # Print all the tenants in order from youngest to oldest
  # Print the names of all the tenants alphabetically

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants
  require_relative "data"
   require "pry"
    apartments = data[:apartments]
    tenants = data[:tenants]
    # Print all the addresses for the apartments
    apartments.each{|apt| puts "#{apt[:address]}"}
    # Print all the names for tenants
    tenants.each{|tenant| puts "#{tenant[:name]}"}
    # Print only apartments that are less then 700 in rent
for apt in apartments
if apt[:monthly_rent] < 700
  puts "#{apt[:id]}"
end
end
# Print only tenants that are over the age of 44
for tenant in tenants
  if tenant[:age] > 44
    puts "#{tenant[:name]}"
  end
end
# Print only tenants that have an apartment id of 1
for tenant in tenants
  if tenant[:apartment_id] == 1
    puts "#{tenant[:name]}"
  end
end
   t_a = tenants[:name].sort_by{|a,b| a[:age]}
   puts "#{t_a}"
    #  puts "Tenants by Age (young to old)"
    #  print tenants.sort_by{ |a,b| a[:age] }
    #  puts "Tenants alphabetically"
    #  print tenants.sort_by{ |a,b| a[:name] }
