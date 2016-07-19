require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # - the data is sorted into two large arrays that consist of hashes
  # - the first is an apartments array consisting of hashes with 4 key values
  # - the second is a tenant array that consists of object also with 4 key values
  # - these two arrays are returned in a large hash holder represented by calling the defined data
  # What are the properties for each of the two types of hashes?
  # - Apartments Array: id-address-rent-sqft
  # - Tenants Array - id-name-age-apartmentid

# Use enumerables to -
  # Print all the addresses for the apartments
  # Print all the names for tenants
  # Print only apartments that are less then 700 in rent
  # Print only tenants that are over the age of 44
  # Print only tenants that have an apartment id of 1
  # Print all the tenants in order from youngest to oldest
  # Print the names of all the tenants alphabetically

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants
apartments.each {|unit| puts unit[:address]}
tenants.each{|tenant| puts tenant[:name]}

apartments.each do |unit|
    if unit[:monthly_rent] < 700
        puts unit
    end
end

tenants.each do |tenant|
    if tenant[:age]>44
        puts tenant
    end
end
