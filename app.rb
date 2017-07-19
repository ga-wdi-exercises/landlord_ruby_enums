require_relative "data"
require "pry"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes

# Use enumerables to -
  # Print all the addresses for the apartments
  # puts "Address for each Apt"
  # apartments.each do |apt|
  #   print apt[:address] + "\n"
  # end
  # # Print all the names for tenants
  # puts "Names of Each Tenant"
  # tenants.each do |tenant|
  #   print tenant[:name] + "\n"
  # end
  # # Print only apartments that are less then 700 in rent
  # puts "Apt IDs of less than $700"
  # for apt in apartments
  #   if apt[:monthly_rent] < 700
  #     print apt[:id].to_s + "\n"
  #   end
  # end
  # # Print only tenants that are over the age of 44
  # puts "Tenants over 44 years"
  # for tenant in tenants
  #   if tenant[:age] > 44
  #     print tenant[:name] + "\n"
  #   end
  # end
  # # Print only tenants that have an apartment id of 1
  # puts "Tenants in Apt 1"
  # for tenant in tenants
  #   if tenant[:apartment_id] == 1
  #     print tenant[:name] + "\n"
  #     print tenant[]
  #   end
  # end
  # # Print all the tenants in order from youngest to oldest
  # puts "Tenants by Age (young to old)"
  # print tenants.sort_by{ |a,b| a[:age] } #QUESTION how to print just name
  # # Print the names of all the tenants alphabetically
  # puts "Tenants alphabetically"
  # print tenants.sort_by{ |a,b| a[:name] }

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants

# enter a number to access apartments (1) or tenants (2)
initial_input = nil
while initial_input != 1 || 2
  print "Enter '1' for Apartment List or '2' for Tenant Directory:"
  initial_input = gets.chomp
  # if 1
  if initial_input.to_i == 1
    print "Apartment ID - Apartment Address" + "\n"
    # show apartment list by print
    apartments.each do |apt|
      print "#{apt[:id]} - #{apt[:address]}" + "\n"
    end
    break
  # if 2
  elsif initial_input.to_i == 2
    # show tenant list by print
    print "tenant ID - tenant Name - tenant Apartment ID" + "\n"
    tenants.each do |tenant|
      print "#{tenant[:id]} - #{tenant[:name]} - #{tenant[:apartment_id]}" + "\n"
    end
    break
  else
    print "please enter valid entry" + "\n"
  end
end
