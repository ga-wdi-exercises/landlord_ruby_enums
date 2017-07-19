require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
      # data has 2 hashes, one for apartments and one for tenants
  # What are the properties for each of the two types of hashes
      # apartment hash contains property info -- an id, address, monthly_rent, and square_feet
      # tenant hash contains the renter info -- an id, name, age, apartment_id
# Use enumerables to -
  # Print all the addresses for the apartments
      # apartments.each { |unit| puts unit[:address] }
  # Print all the names for tenants
      # tenants.each { |renter| puts renter[:name] }
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
      # puts tenants.sort_by { |renter| renter[:age] }
  # Print the names of all the tenants alphabetically
      # tenants.sort_by { |renter| puts renter[:name] }
  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
      # tenants.each do |renter|
      #   renter[:address]
      #     apartments.each do |unit|
      #       if unit[:id] == renter[:apartment_id]
      #         renter[:address] = unit[:address]
      #       end
      #     end
      # end
      # puts tenants
  # When printing all apartments, under each apartment print all of its tenants
      # apartments.each do |unit|
      #   unit[:tenants] = []
      #     tenants.each do |renter|
      #       if renter[:apartment_id] == unit[:id]
      #         unit[:tenants].push(renter[:name])
      #       end
      #     end
      # end
      # puts apartments
