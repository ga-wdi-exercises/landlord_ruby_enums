require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
# Explain how the data is structured
#The information is stored in two arrays, 'tenants' and 'apartments', which are both local variables of a function 'data' - which, when called, returns the information in a hash that has two keys, one each for 'tenants' and 'apartments'
# What are the properties for each of the two types of hashes
# 'apartments' has properites: id, address, monthly_rent and square_feet
# 'tenants' has properties: id, name, age, apartment_id

# Use enumerables to -
Print all the addresses for the apartments
apartments.each do |apartment|
  puts apartment[:address]
end
# Print all the names for tenants
tenants.each do |tenant|
  puts tenant[:name]
end
# Print only apartments that are less then 700 in rent
apartments.each do |apartment|
  if apartment[:monthly_rent<700]
    puts apartment
  end
end
# Print only tenants that are over the age of 44
tenants.each do |tenant|
  if tenant[:age<44]
    puts tenant
  end
end
# Print only tenants that have an apartment id of 1
tenants.each do |tenant|
  if tenant[:apatment_id]==1
    puts tenant
  end
end
# Print all the tenants in order from youngest to oldest
tenants.sort_by! do |tenant|
  tenant[:age]
end
puts tenants
# Print the names of all the tenants alphabetically
puts tenants.sort{|left, right| left[:name] <=> right[:name]}
