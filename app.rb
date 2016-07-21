require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
apartments = data[:apartments]
tenants = data[:tenants]
ruby_apartments = []
ruby_tenants = []

# Loop through Apartments Array
ruby_apartments = apartments.map do |apartment|
  # On Initializtion create the new APT instances with these attributes FOR EACH INDEX
  Apartment.new(apartment[:id], apartment[:address], apartment[:monthly_rent], apartment[:square_feet])

end
# Loop through tenants Array
ruby_tenants = tenants.map do |tenant|
  # On initialization, create the new Tenant instances with the following attributes FOR EACH INDEX
  Tenant.new(tenant[:id], tenant[:name], tenant[:age], tenant[:apartment_id])
end

# get user input for accessing apartment data by ID #
def get_user_input prompt
  puts prompt
  gets.chomp
end

input = get_user_input("press 1 to view properties // press 2 to view tenants// press 3 to EXIT")


if input == "1"
  puts "Heres a list of apartments you own!"
  ruby_apartments.each do |apartment|
    puts apartment.address
  end

  puts "

  Press Enter to Continue

  "
elsif input == "2"
  puts "Heres a list of tenants you rent to!"
  ruby_tenants.each do |tenant|
    puts tenant.name
  end

  puts "

  Press Enter to Continue

  "
elsif input == "3"
  puts "Session Terminated"
end





# while loop 'end' below



# - I should have a numbered interface for my application so that I can just type in a number to access different parts of my program.
# - I should be allowed an option to view all the apartments so that I can get an overview of my properties.
# - I should be allowed  an option view all the tenants so that I can get an overview of my tenants


# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
# Explain how the data is structured
# What are the properties for each of the two types of hashes

# Use enumerables to -

# Print all the addresses for the apartments

# apartments.each do |apartment|
#   puts apartment[:address]
# end

# Print all the names for tenants

# tenants.each do |tenant|
#   puts tenant[:name]
# end

# Print only apartments that are less then 700 in rent

# apartments.each do |apartment|
#     if apartment[:monthly_rent] < 700
#       puts apartment[:address]
#   end
# end

# Print only tenants that are over the age of 44
# tenants.each do |tenant|
#   if tenant[:age] > 44
#     puts tenant[:name]
#   end
# end
# Print only tenants that have an apartment id of 1
# tenants.each do |tenant|
#   if tenant[:apartment_id] == 1
#     puts tenant[:name]
#   end
# end
# Print all the tenants in order from youngest to oldest

# puts tenants.sort_by{|tenant| tenant[:age]}


# Print the names of all the tenants alphabetically
# sorted_tenants = tenants.sort_by{|tenant| tenant[:name]}
# sorted_tenants.each do |tenant|
#   puts tenant[:name]
# end

## More challenging
# When printing tenants also print out the address that the tenant resides in.
# When printing all apartments, under each apartment print all of its tenants
