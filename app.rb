require_relative "data"
ruby_apartments = data[:apartments]
ruby_tenants = data[:tenants]
#
# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes

# Use enumerables to -
  # Print all the addresses for the apartments
# # puts apartments.each do |apartment|
#         # puts apartment[:address]
#         #end
#   # Print all the names for tenants
# # puts tenants
#   # Print only apartments that are less then 700 in rent
#
# cheap_apartments = apartments.find_all {|a| a[:monthly_rent]< 700}
#
#   puts cheap_apartments
#   # Print only tenants that are over the age of 44
# older_tenants = tenants.find_all{|t| t[:age] > 44}
#   puts older_tenants
#   # Print only tenants that have an apartment id of 1
# tenant_ids = tenants.select { |a| a[:apartment_id] == 1}
#   puts tenant_ids
  # Print all the tenants in order from youngest to oldest
# order_tenants = tenants.sort_by{|b| b[:name]}
  # puts order_tenants
  # Print the names of all the tenants alphabetically
  # abc_tenants = tenants.sort_by{|b| b[:name].downcase}
    # puts abc_tenants
  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.

  # When printing all apartments, under each apartment print all of its tenants
  require_relative "data"
  require_relative "models/apartment"
  require_relative "models/tenant"
  apartments = data[:apartments]
  tenants = data[:tenants]
  ruby_apartments = []
  ruby_tenants = []

puts "1.) apartments overview"
puts "*" * 50
puts "2.) tenants overview"
puts "*" * 50
puts "please enter your choice:"
puts "*" * 50

input = gets.chomp

if input == "1"
  apartments.map do |unit|
    puts unit
  end
end

if input == "2"
  tenants.map do |person|
    puts person
  end
end
