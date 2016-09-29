require 'pry'
require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes

# Use enumerables to -
  # Print all the addresses for the apartments
  address = apartments.each do |apartments|
    puts apartments[:address]
  end
  # Print all the names for tenants
  tenants = tenants.each do |tenants|
    puts tenants[:name]
  end
  # Print only apartments that are less then 700 in rent
  rent700 = apartments.each do |address|
    if address[:montly_rent] < 700
      puts[:address]
  end
end
  # Print only tenants that are over the age of 44
  tenants_over_44 = tenants.each do |tenants|
    if tenants[:age]> 44
      puts tenants[:name]
  end
end
  # Print only tenants that have an apartment id of 1
  apartment_id_1 = tenants.each do |tenants|
    if tenants[:apartment_id]=1
      puts tenants[:name]
  end
end
  # Print all the tenants in order from youngest to oldest
  old_young = tenants.sort_by do |tenants|
     tenants[:age]
   end

   puts old_young

  # Print the names of all the tenants alphabetically
  alph_order = tenants.sort_by do |tenants|
    tenants[:name]
  end

  puts alph_order
  # More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants

  binding.pry

  puts "last line"
