require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  Explain how the data is structured
  What are the properties for each of the two types of hashes

Use enumerables to -
  #Print all the addresses for the apartments
apartments.each do |apartments|
    puts "#{apartments[:address]}"
  end

  # Print all the names for tenants
  tenants.each do |names|
    puts "#{names[:name]}"
  end
  #Print only apartments that are less then 700 in rent
  apartments.each do |rents|
    if rents[:monthly_rent] < 700
      puts "#{rents[:monthly_rent]}"
    else
    end
  end
#  Print only tenants that are over the age of 44

tenants.each do |ages|
  if ages[:age] > 40
    puts "#{ages[:age]}"
  else
  end
end

#Print only tenants that have an apartment id of 1
tenants.each do |aptid|
  if aptid[:id] == 1
    puts "#{aptid[:name]}"
  else
  end
end
  # Print all the tenants in order from youngest to oldest

tenants.each.sort_by do |ages|
  puts "#{ages[:age]}"
end


#   # Print the names of all the tenants alphabetically
tenants.each.sort_by do |alpha|
  puts "#{alpha[:name]}"
end

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants
