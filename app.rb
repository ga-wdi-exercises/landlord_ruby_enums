#come back to part 1 more challenging if time allows
#go beyond MVP if time allows

require 'pry'

require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
apartments = data[:apartments]
tenants = data[:tenants]
ruby_apartments = []
ruby_tenants = []

#PART 3_______________________________

apartments.each do |apt|
  ruby_apartments << Apartment.new(apt[:id],apt[:address],apt[:monthly_rent],apt[:square_feet])
end


tenants.each do |tenant|
  ruby_tenants << Tenant.new(tenant[:id],tenant[:name],tenant[:age],tenant[:apartment_id])
end


#PART 2-----------------------------
puts "Hi! press 1 for tenant data. Press 2 for apartment data"

userInput = gets.chomp.to_i

if userInput == 1
  puts ruby_tenants
elsif userInput == 2
  puts ruby_apartments
else
  puts "command not recognized, please try again"
end


#Part 1______________________________________


# ruby_apartments.each {|apt| puts apt.address}

# ruby_tenants.each {|tenant| puts tenant.name}

# cheap_apartments = ruby_apartments.each {|apt| puts apt.monthly_rent < 700}
# puts cheap_apartments

# old_tenants = ruby_tenants.each {|tenant| tenant.age > 44}
# puts old_tenants

# apartment_one = ruby_tenants.each {|tenant| tenant.apartment_id == 1}
# puts apartment_one

# puts ruby_tenants.sort_by{|tenant| tenant.age}

# puts ruby_tenants.sort_by{|tenant| tenant.name}

binding.pry


# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes

# Use enumerables to -
  # 1 Print all the addresses for the apartments
  # 2 Print all the names for tenants
  # 3 Print only apartments that are less then 700 in rent
  # 4 Print only tenants that are over the age of 44
  # 5 Print only tenants that have an apartment id of 1
  # 6 Print all the tenants in order from youngest to oldest
  # 7 Print the names of all the tenants alphabetically

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants





#NOTES___________________________________________
  #_______old while loop code from part 1  *deleted loop from step 1

  # index = 0
  # while index < tenants.length
  #   puts tenants[index][:name]
  #   index += 1
  # end

  # index = 0
  # while index < apartments.length
  #   if apartments[index][:monthly_rent] < 700
  #     puts apartments[index][:id]
  #     index += 1
  #   else
  #    index += 1
  #  end
  # end

  # index = 0
  # while index < tenants.length
  #   if tenants[index][:age] > 44
  #     puts tenants[index][:name]
  #     index += 1
  #   else
  #    index += 1
  #  end
  # end

  #
  # index = 0
  # while index < tenants.length
  #   if tenants[index][:apartment_id] == 1
  #     puts tenants[index][:name]
  #     index += 1
  #   else
  #     index += 1
  #  end
  # end
