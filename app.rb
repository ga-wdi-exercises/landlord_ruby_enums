require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes
  ## ANSWER
  # The below "data" is a method, wich contains two hashes .
  # The first hash is called "apartment" and the second one is called "tenants".
  # The "apartments" hash contains four properties: "id", "address", "monthly_rent", and "square_feet".
  # The "tenants" hash also contains four properties: "id", "name", "age", and "apartment_id".

# Use enumerables to -
  # Print all the addresses for the apartments
  #     apartments.each do |apartment|
  #         puts apartment[:address]
  #       end
  #
  # # # Print all the names for tenants
  #     tenants.each do |tenant|
  #         puts tenant[:name]
  #       end
  #
  # # Print only apartments that are less then 700 in rent
  #     below_700 = apartments.select do |apartment|
  #       apartment[:monthly_rent] < 700
  #       end
  #       puts below_700
  #
  # # Print only tenants that are over the age of 44
  #     over_44 =  tenants.select do |tenant|
  #       tenant[:age] > 44
  #       end
  #         p over_44
  #
  # # Print only tenants that have an apartment id of 1
  #     id_1 = tenants.select do |tenant|
  #       tenant[:apartment_id] == 1
  #     end
  #      p id_1


  # Print all the tenants in order from youngest to oldest
    young_to_old = tenants.sort_by do |tenant|
       tenant[:age]
    end
    p young_to_old
  # Print the names of all the tenants alphabetically

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants
