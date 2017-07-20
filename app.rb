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
  equire_relative "data"
   require "pry"
    apartments = data[:apartments]
    tenants = data[:tenants]

   @@ -8,12 +9,43 @@
    		     +  puts "Address for each Apt"
     apartments.each do |apt|
     print apt[:address] + "\n"
     end
     puts "Names of Each Tenant"
     tenants.each do |tenant|
       print tenant[:name] + "\n"
     end
     puts "Apt IDs of less than $700"
     for apt in apartments
       if apt[:monthly_rent] < 700
         print apt[:id].to_s + "\n"
       end
     end
     puts "Tenants over 44 years"
     for tenant in tenants
      if tenant[:age] > 44
         print tenant[:name] + "\n"
       end
     end
     puts "Tenants in Apt 1"
     for tenant in tenants
       if tenant[:apartment_id] == 1
         print tenant[:name] + "\n"
         print tenant[]
       end
     end
     puts "Tenants by Age (young to old)"
     print tenants.sort_by{ |a,b| a[:age] }
     puts "Tenants alphabetically"
     print tenants.sort_by{ |a,b| a[:name] }
