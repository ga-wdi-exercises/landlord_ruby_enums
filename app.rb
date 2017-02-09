require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
apartments = data[:apartments]
tenants = data[:tenants]

First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  Explain how the data is structured

  two arrays with multiple hashes. Contained within the hashes are 4 hash values.
  # What are the properties for each of the two types of hashes
apartments- Id, address, monthly_rent, square_feet
tenants - Id, name, age, apartment -ID

Use enumerables to -
  Print all the addresses for the apartments
apartments.map do |apartment|
puts apartment[:address]
end

  Print all the names for tenants
  tenants.each do |tenant|
    puts tenant[:name]
  end
  Print only apartments that are less then 700 in rent
  apartments.select do |apartment|
     if apartment[:monthly_rent] < 700
       puts apartments[:address]
  end
end
  Print only tenants that are over the age of 44
  tenants.select do |tenant|
    if tenant[:age] > 44
      puts tenant[:name]
    end
  end
  Print only tenants that have an apartment id of 1
  tenants.select do |tenant|
    if tenant[:id] == 1
      puts tenant[:name]
    end
  end

  Print all the tenants in order from youngest to oldest
  order = tenants.sort_by do |tenant|
   tenant[:age]
  end
puts order

  Print the names of all the tenants alphabetically
  alpha = tenants.sort_by do |tenant|
    tenant[:name]
  end
  puts alpha

  # More challenging
  When printing tenants also print out the address that the tenant resides in.
  apartments.each do |address|
    tenants.each do |tenant|
       puts "#{tenant[:name]} lives at #{address[:address]}"
     end
   end
  When printing all apartments, under each apartment print all of its tenants
apartments.each do |apartments|
    tenants.each do |tenants|
       tenants[:name]
       if apartments[:id] == tenants[:id]
         puts "#{apartments[:address]}"
         puts "#{tenants[:name]}"
       end
  end
end
