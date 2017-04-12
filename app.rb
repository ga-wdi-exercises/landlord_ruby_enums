require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]
# require_relative "models/apartment"
# require_relative "models/tenant"

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
      #Apartments and tenents are stored as two separate arrays. For apartments,
      #keys are 'id' 'address', 'monthly rent' and 'square feet'. For tenants,
      #there is 'name, ''age' and 'apartment_id'. Both arrays include an id for
      #'apartment'
  # What are the properties for each of the two types of hashes ^^

# Use enumerables to -
  # Print all the addresses for the apartments
   # apartments.each{|apartment| puts apartment.address}
  # Print all the names for tenants
    # tenants.each{|apartment| puts tenant.name}
  # Print only apartments that are less then 700 in rent
    # apartments.select{|apartment| apartment.monthly_rent < 700}
  # Print only tenants that are over the age of 44
    # tenants.select{|tenant| tenant.age < 44}
  # Print only tenants that have an apartment id of 1
    # tenants.select{|tenant| tenant.id == 1}
  # Print all the tenants in order from youngest to oldest
    # tenants.sort_by{|tenant| tenant.age}
  # Print the names of all the tenants alphabetically
    # tenants.sort_by{|tenant| tenant.name}

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants


# puts "Hello, Press '1' to see a list of properties, '2' for list of tenants."
#
# user_input = gets.chomp.to_i
# if (user_input == 1)
#   apartments.each do|apartment|
#     puts apartment[:address]
#   end
# elsif (user_input == 2)
#   tenants.each do |tenant|
#     puts tenant[:name]
#   end
# end
