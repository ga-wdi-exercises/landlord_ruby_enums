require 'pry'

require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]


apartments.each do |x|
  puts x[:address]
end

tenants.each do |x|
  puts x[:name]
end

apartments.each do |x|
  if x[:rent] < 700
    puts x
  end
end

tenants.each do |x|
  if x[:age] > 44
    puts x
  end
end

tenants.each do |x|
  if x[:id] == 1
    puts x
  end
end

sort_tenants = tenants.sort {|a,b| a[:age] <=> b[:age] }
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
binding.pry

puts 'program resumes here.'
