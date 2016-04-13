require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  It's categorized by apartments and tenants. It has string value sand numerical values.
  # What are the properties for each of the two types of hashes


# Use enumerables to -
  # Print all the addresses for the apartments
      appartments[:address]

      apartments.each do |apartment|
        puts apartment[:address]
      end

  # Print all the names for tenants
      tenants[:name]

      tenants.each do [tenant]
        puts tenant[:name]
      end


  # Print only apartments that are less then 700 in rent
  cheaper_apartments = apartments.select do |apartment|
      apartment[:monthly_rent] < 700
      end


  # Print only tenants that are over the age of 44
  44_tenants = tenants.select do [tenant]
    tenant[;age] >44
  end
  # Print only tenants that have an apartment id of 1
  apt_id_tenants = tenants.select do [tenant]
    tenant[;apartment_id] =1

  # Print all the tenants in order from youngest to oldest
  tenants_by_age = tenants.sort_by do [tenant]
    tenant[:age].sort
  end
    puts tenants_by_age

  # Print the names of all the tenants alphabetically
  tenants_alphabetized = tenants.sort_by do [tenant]
    tenant[:name]
  end
    puts tenants_alphabetized

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.

   Left blank intentionally.

  # When printing all apartments, under each apartment print all of its tenants

  Left blank intentionally.
