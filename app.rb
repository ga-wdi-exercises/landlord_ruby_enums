require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # Response: the data is arranged as an object that contains two arrays which each contain hashes which contain key value pairs

  # What are the properties for each of the two types of hashes
  # Response: the properties for apartment array hash are: Id, address, monthly_rent and square
  # Response: the properties for the tenants array hash are: Id, name, age, and apartment_id

# Use enumerables to -
  # Print all the addresses for the apartments
  #   apartments.each do |apartment|
  #   puts apartment[:address]
  # end

  # Print all the names for tenants
      # tenants.each do |name|
      #   puts name[:name]
      # end

  # Print only apartments that are less then 700 in rent
      # for less_pay in apartments do
      #   if less_pay[:monthly_rent] < 700
      #     puts less_pay[:id]
      #   end
      # end
  # Print only tenants that are over the age of 44
      # for mid_ten in tenants do
      #   if mid_ten[:age] > 44
      #     puts mid_ten[:age]
      #   end
      # end
  # Print only tenants that have an apartment id of 1
      # for ten_id in tenants do
      #   if ten_id[:id] == 1
      #     puts ten_id[:id]
      #   end
      # end
  # Print all the tenants in order from youngest to oldest
      for ascending in tenants do
        tenants.sort_by!{|ascending| [:age]}
          puts tenants.sort_by!{|ascending| [:age]}
        end 

  # Print the names of all the tenants alphabetically

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants
