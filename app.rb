require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]


# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes

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


  #All data written in a method. Separated into an array of Apartment hashes and an array of tenant hashes
  # apartment props: address, monthly_rent, square_feet
  # tenant props: name, age, apartment_id

# apartments.each do |apartment|
#   puts apartment[:address]
# end
#
# tenants.each do |tenant|
#   puts tenant[:name]
# end
#
# apartments.each do |apartment|
#   if apartment[:monthly_rent] < 700
#     puts apartment
#   end
# end
#
# tenants.each do |tenant|
#   if tenant[:age] > 44
#     puts tenant
#   end
# end
#
# tenants.each do |tenant|
#   if tenant[:apartment_id] == 1
#     puts tenant
#   end
# end
#
# tenants_by_age = tenants.sort_by do |tenant|
#   tenant[:age]
# end
# puts tenants_by_age
#
# tenants_alphabetically = tenants.sort_by do |tenant|
#   tenant[:name]
# end
# puts tenants_alphabetically



tenants.each do |tenant|
  apartments.each do |apartment|
    if tenant[:apartment_id] == apartment[:id]
      puts "#{tenant[:name]} lives at #{apartment[:address]}"
    end
  end
end
