require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
             # Explain how the data is structured
#  Ans
             # What are the properties for each of the two types of hashes
#


# Use enumerables to -
  # Print all the addresses for the apartments
  module Enumerable
    def pluck(key)
      map {|obj| obj[key] }
    end
  end

  apartments.pluck(:address)

  #or

  apartments.each do |apartment|
         puts apartment[:address]
       end
  # Print all the names for tenants
  tenants = data[:tenants]

tenants.each do |tenant|
puts tenant[:name]
end
  # Print only apartments that are less then 700 in rent

  apartments.each do |apartment|
  while apartment[:monthly_rent] < 700
  puts apartment
  break
      end
   end

  # Print only tenants that are over the age of 44

  tenants.each do |tenant|
  while tenant[:age] > 44
  puts tenant
  break
      end

   end
  # Print only tenants that have an apartment id of 1

  apartments.each do |apartment|
  if apartment[:id].to_s == '1'
  puts apartment
  break
    end
   end

  # Print all the tenants in order from youngest to oldest
 p tenants.sort_by{|tenant| tenant[:age]}
  # Print the names of all the tenants alphabetically
  p tenants.sort_by{|tenant| tenant[:name]}
  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  tenants.each do |tenant|
  apartment = apartments.find {|apartment| tenant[:apartment_id] == apartment[:id]}
  puts tenant[:name]
 puts apartment[:address]
end
  # When printing all apartments, under each apartment print all of its tenants

  apartments.each do |apartment|
      tenant = tenants.select {|tenant| tenant[:apartment_id] == apartment[:id]}
      tenant.each do |tenant|
       puts apartment[:address]
       puts tenant[:name]
      end
      end
