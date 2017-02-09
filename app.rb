require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured

      # MY ANSWER #
      # There are two separate arrays, apartments and tenants, with hashes
      # containing properties of each individual renter and unit.

  # What are the properties for each of the two types of hashes

    # Apartments: id, address, monthly_rent, square_feet
    # Tenants: id, name, age, apartment_id
    # The apartment and tenant id fields link the apartment_id field to
    # the specific apartments.

# Use enumerables to -
  # Print all the addresses for the apartments

    # apartments.each do |unit|
    #   puts unit[:address]
    # end

  # Print all the names for tenants

    # tenants.each do |renter|
    #   puts renter[:name]
    # end

  # Print only apartments that are less then 700 in rent

    # apartments.each do |unit|
    #   if unit[:monthly_rent] < 700
    #     puts unit
    #   end
    # end

  # Print only tenants that are over the age of 44

    # tenants.each do |renter|
    #   if renter[:age] > 44
    #     puts renter
    #   end
    # end

  # Print only tenants that have an apartment id of 1

    # tenants.each do |renter|
    #   if renter[:apartment_id] == 1
    #     puts renter
    #   end
    # end

  # Print all the tenants in order from youngest to oldest

    # sorted_tenants = tenants.sort_by{|renter| renter[:age]}
    # puts sorted_tenants

  # Print the names of all the tenants alphabetically

    # sorted_tenants = []
    # sorted_tenants = tenants.sort_by!{|renter| renter[:name]}
    # for renter in sorted_tenants
    #   puts renter[:name]
    # end

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.

    # sorted_tenants = []
    # sorted_tenants = tenants.sort_by!{|renter| renter[:name]}
    # for renter in sorted_tenants
    #   puts renter[:name]
    #   puts apartments[renter[:apartment_id]-1][:address]
    # end

  # When printing all apartments, under each apartment print all of its tenants

    # for unit in apartments
    #   puts unit
    #   for renter in tenants
    #     if unit[:id] == renter[:apartment_id]
    #       puts renter[:name]
    #     end
    #   end
    # end
