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

require "pry"

require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
    # LAB - #The data is structured in 2 arrays each with an internal hash structure utilizing symbol objects for keys.
  # What are the properties for each of the two types of hashes
    # LAB -  numbers and strings


apartments.each{|unit| puts "Unit Address: #{unit[:address]}"}

# apartments.each do |address|
#   puts "Unit Address: #{address[:address]}"
# end

tenants.each{|tenant| puts "Tenant Name: #{tenant[:name]}"}

# tenants.each do |name|
#   puts "Tenant Name: #{name[:name]}"
# end

apartments.each do |unit|
  if unit[:monthly_rent] < 700
    puts "Low Rent Apartments: #{unit[:address]}, $#{unit[:monthly_rent]}.00"
  end
end

tenants.each do |tenant|
  if tenant[:age] > 44
    puts "Tenant Over 44: #{tenant[:name]}, #{tenant[:age]}"
  end
end

tenants.each do |tenant|
  if tenant[:apartment_id] == 1
    puts "Tenant in apartment 1: #{tenant[:name]}"
  end
end

tenants.sort_by {|tenant| tenant[:age]}.each do |tenant|
  puts "Tenant by Age: #{tenant[:name]}, #{tenant[:age]}"
end

tenants.sort_by {|tenant| tenant[:name]}. each do |tenant|
  puts "Tenant by Name: #{tenant[:name]}"
end

binding.pry
