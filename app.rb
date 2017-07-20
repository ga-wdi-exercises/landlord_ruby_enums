require "pry"


require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
apartments = data[:apartments]
tenants = data[:tenants]
ruby_apartments = []
ruby_tenants = []

#loop through with .each create classes and push into respective arrays

ruby_apartments = apartments.each do |x|
   Apartment.new(x[:id], x[:address], x[:monthly_rent], x[:square_feet])
 end
# print ruby_apartments

ruby_tenants = tenants.each do |j|
  Tenant.new(j[:id], j[:name], j[:age], j[:apartment_id])
end
# print ruby_tenants

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  #data is structured so that there are two hashes, one for tenants and on for the apartment in which they reside
  # What are the properties for each of the two types of hashes
  #the tenant hash contains the info about the tenant, name, age and apartment id which tells us what apartment they live in
  #the apartment hash contains an id (used to identify who lives there), an address, rent and square feet

#create numbered inferface by printing choice of numbers
puts ("Greetings MR PIZZA, please enter 1 for tenant list or 2 for propery list")
input = gets.chomp
# #create if statement that maps through array based on input, list apartments and tenants
alpha = ruby_tenants.sort_by { |ii| ii[:name] }
  alpha.each do |j|
    if input == "1"
      puts "#{j[:name]}"
    else

  end
end
  ruby_apartments.each do |x|
    if input == "2"
      puts "#{x[:address]}"
    else

  end
end


# Use enumerables to -
  # Print all the addresses for the apartments
  # ruby_apartments.each do |x|
  #   puts "#{x[:address]}"
  # end
  # Print all the names for tenants
  # ruby_tenants.each do |j|
  #   puts "#{j[:name]}"
  # end
  # Print only apartments that are less then 700 in rent
  # ruby_apartments.each do |i|
  #   if i[:monthly_rent] < 700
  #     puts i
  #   end
  # end
  # Print only tenants that are over the age of 44
  # ruby_tenants.each do |wordz|
  #   if wordz[:age] > 44
  #     puts wordz
  #   end
  # end
  # Print only tenants that have an apartment id of 1
  # ruby_tenants.each do |stuff|
  #   if stuff[:apartment_id] == 1
  #     puts stuff
  #   end
  # end
  # Print all the tenants in order from youngest to oldest
  # sort = ruby_tenants.sort_by { |e| e[:age]  }
  # puts sort
  # Print the names of all the tenants alphabetically

# alpha = ruby_tenants.sort_by { |ii| ii[:name] }
# puts alpha
  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants
  # binding.pry

    puts "end of file"
