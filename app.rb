require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:

  # Explain how the data is structured
#The data has two classes, apartments and tenants. A lot of information is being stored right in the class instead of gathering the information through methods.

  # What are the properties for each of the two types of hashes
# The apartment class has properties of address, monthly rent, and square feet. The tenant class has the properties of name, age, and apartment id.

# Use enumerables to -
  # Print all the addresses for the apartments
  apartments.each do |apartments|
    puts address
  # Print all the names for tenants
  tenants.each do |tenants|
    puts name
  # Print only apartments that are less then 700 in rent
  apartments.each do |apartments|
    if monthly_rent < 701
      puts monthly_rent
  # Print only tenants that are over the age of 44
  tenants.each do |tenants|
    if age >= 44
      puts name
  # Print only tenants that have an apartment id of 1
  tenants.each do |apartments|
    if apartment id == 1
      puts name
  # Print all the tenants in order from youngest to oldest

  # Print the names of all the tenants alphabetically

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants
  require_relative "models/apartment"
  require_relative "models/tenant"
