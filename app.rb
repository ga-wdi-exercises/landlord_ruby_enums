require "pry"
require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
apartments = data[:apartments]
tenants = data[:tenants]
ruby_apartments = []
ruby_tenants = []



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
  # Print only tenants that have an apartment id of 1
  # puts "Tenants in Apt 1"
  # for tenant in tenants
  #   if tenant[:apartment_id] == 1
  #     print tenant[:name] + "\n"
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

# Apartment info + Occupant List
# .each do |unit|
# house_info = apartments.each do |apt|
# # unit[:tenants] =[]
#   apt[:tenants] = []
# # tenants.each ..
#   tenants.each do |tenant|
# # if ap id == unit id
#     if apt[:id] == tenant[:apartment_id]
# # unit[tenant].push name
#       apt[:tenants].push(tenant[:name])
#     end
#   end
# end

# occupant_info = tenants.each do |person|
#   person[:addr] = []
#   apartments.each do |apt|
#     if person[:apartment_id] == apt[:id]
#       puts person[:apartment_id]
#       puts apt[:id]
#       person[:add].push(apartments[:address].to_s)
#       puts person[:add]
#     end
#   end
# end
# puts occupant_info

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
    #prints selected Apartment's Occupants
    print "Select the apartment ID that you would like to inspect" + "\n"
    apart_input = gets.chomp
    for tenant in tenants
      if apart_input.to_i == tenant[:apartment_id]
        print tenant[:name] + ". "
      end
    end
    # QUESTION tenants.select { |ten| ten[:apartment_id] == apart_input.to_i }
    # How do I specify the return?
    # Line break prior to next prompt
    print "\n"
  # if 2
  elsif initial_input.to_i == 2
    # show tenant list by print
    print "tenant ID - tenant Name - tenant Apartment ID" + "\n"
    tenants.each do |tenant|
      print "#{tenant[:id]} - #{tenant[:name]} - #{tenant[:apartment_id]}" + "\n"
    end
    print "Select the tenant ID that you would like to inspect" + "\n"
    tenant_input = gets.chomp
    for apt in apartments
      if tenant_input.to_i == apt[:id]
        print "Address: #{apt[:address]}"
      end
    end
    # Line break prior to next prompt
    print "\n"
  else
    print "please enter valid entry" + "\n"
  end
end
