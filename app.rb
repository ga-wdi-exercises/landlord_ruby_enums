require "pry"
# require_relative "models/apartment"
# require_relative "models/tenant"
require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]


# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
    # The data is structured in tow array apartments and tenants.
    # Each of these array contains multiple objects to show detil informtion about apartments and tenants.
  # What are the properties for each of the two types of hashes
    # apartments and tenants


# Use enumerables to -
  # Print all the addresses for the apartments
  apartments.map do |i|
    puts "#{apartments.[i][:address]}"
  end
  # Print all the names for tenants
  tenants.map do |i|
    puts "#{tenants.[i][:name]}"
  end

  # Print only apartments that are less then 700 in rent
cheapApartments= {}
  apartments.map do |i|
    if apartments[i][:monthly_rent]<700
      cheapApartments.push (apartments[i])
          puts "#{cheapApartments}"
    end
  end

  # Print only tenants that are over the age of 44
  tenants.map do |i|
    if tenants[i][:monthly_rent]>44
    oldTenants= tenants[i][:monthly_rent]
    puts "#{oldTenants}"
    end
  end

  # Print only tenants that have an apartment id of 1
  tenants.map do |i|
    if tenants[i][:tenants[:id]==1
    apartmentwithId1= tenants[i][:id]
    puts "#{apartmentwithId1}"
    end
  end

  # Print all the tenants in order from youngest to oldest


    sortTenantsByAge= tenants[:age].sort
    puts "#{sortTenantsByAge}"
  # Print the names of all the tenants alphabetically
    sortTenantsByAlphabet= tenants[:name].sort
    puts "#{sortTenantsByAlphabet}"
  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants
binding "pry"
