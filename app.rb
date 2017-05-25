require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]
require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes

# Use enumerables to -
  # Print all the addresses for the apartments
  apartments.map do |apartment|
    puts apartment[:address]
  end
  # Print all the names for tenants
  tenants.each do |tenant|
    puts tenant[:name]
  end
  # Print only apartments that are less then 700 in rent
  apartments.select do |apartment|
    if apartment[:monthly_rent] < 700
      puts apartment[:monthly_rent]
    end
  end
  # Print only tenants that are over the age of 44
  tenants.map do |tenant|
    if tenant[:age] > 44
      puts tenant[:name]
    end
  end
  # Print only tenants that have an apartment id of 1
  tenants.select do |tenant|
    if tenant[:id] == 1
      puts tenant
    end
  end
  # Print all the tenants in order from youngest to oldest
  puts tenants.sort { |a, b| a[:age] <=> b[:age]}
  # Print the names of all the tenants alphabetically
  tenants.sort! { |a,b| a[:name] <=> b[:name]}
  tenants.each {|tenent| puts tenent[:name]}

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants
