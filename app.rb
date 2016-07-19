require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes

# Use enumerables to -
  # Print all the addresses for the apartments
  apartments.each { |apartment| puts apartment[:address] }

  # Print all the names for tenants
  tenants.each { |tenant| tenant[:name] }

  # Print only apartments that are less then 700 in rent
  apartments.each { |apartment|
    if apartment[:monthly_rent] < 700
      puts apartments
    end
  }

  # Print only tenants that are over the age of 44
  tenants.each { |tenant|
    if tenant[:age] > 44
      puts tenant[:name]
    end
  }

  # Print only tenants that have an apartment id of 1
  tenants.each { |tenant|
    if tenant[:apartment_id] == 1
      puts tenant[:name]
    end
  }

  # Print all the tenants in order from youngest to oldest
  tenants.sort_by! { |tenant| tenant[:age]
    # puts tenant
  }
  tenants.each { |tenant| puts tenant }


  # Print the names of all the tenants alphabetically
  tenants.sort_by! { |tenant| tenant[:name]
    # puts tenant
  }
  tenants.each { |tenant| puts tenant }

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants


  # apartments is an array of hashes, with each hash having the following:
  #   id: an int
  #   address: a string containing the house number and street name
  #   monthly_rent: an int representing the monthly rent in dollars
  #   square_feet: an int
  #

  # tenants is an array of hashes, with each hash having the following
  #    id: an int
  #    name: a string. Contains first and last name. May also contain a prepended title or postnominals
  #    age: an int
  #    apartment_id: an int corresponding to the id of the person's apartment