require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
    #The apartment hash keys consist of an ID, address, rental payment, and size of the apartment
    #The tenants data keys consist of their name, age and apartment ID.
  # What are the properties for each of the two types of hashes
    #Each hash key symbol provides the details for either the apartment or the tenant

# Use enumerables to -
  # Print all the addresses for the apartments
    # ruby_apartments.each{|apartment| puts apartment.address}
     apartments.each do |apartment|
       puts apartment[:address]
     end

  # Print all the names for tenants
    tenants.each do |tenants|
      puts tenants[:name]
    end
  # Print only apartments that are less then 700 in rent
    apartments.each do |apartment|
      if (apartment[monthly_rent ])
      puts apartment[:address]
    end
  # Print only tenants that are over the age of 44
  # Print only tenants that have an apartment id of 1
  # Print all the tenants in order from youngest to oldest
  # Print the names of all the tenants alphabetically

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants
