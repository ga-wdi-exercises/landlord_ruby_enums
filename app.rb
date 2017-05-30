require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

temp_apartment = apartments.new {|hash,key| hash[key] = []}
temp_tenant = tenants.new {|hash,key| has[key] = []}

temp_apartment << [:id, :address, :monthly_rent, :square_feet]
temp_tenant << [:id, :name, :age, :apartment_id]

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





# Here the data class structure has two variables 
# containing an array of hashes.

# The propeties are every with the symbol ":" IE: ":address"

  # apartment = apartments.each {|address| print address[:address]}
  
  

# puts "Options from app.rb for apartments"

# loop do 
#   input = gets.chomp
#   case input
#   when address
    # apartments.each {|address| print address[:address]}
  # when address under < 700
  #   temp_apartments.each {
  # |address| print temp_apartment.get_address
# }
#     end
# end

# puts "Options from app.rb for tenants" 
# loop do
# input = gets.chomp
# case input
# when names
# tenant = temp_tenant.each {|names| print names[:name]}
# when tenant.get_age > 44
# temp_tenant.each {
# |tenant| print temp_tenant.get_name
# }
# when temp_tenant
# 
# 

# For getting under 700, Each_with_index seems to be working,
# Though I am sure it should be doing it for a multitude of numbers.

# Using .select is invalid "# apartment.select{|number| number[:monthly_rent] <= 700}"
# .find and nesting a if/elsif inside to get 700 undernot valid methods. 
























