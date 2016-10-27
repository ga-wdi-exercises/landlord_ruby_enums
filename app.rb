require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured

#   two arrays with multiple hashes. Contained within the hashes are 4 hash values.
#   # What are the properties for each of the two types of hashes
# apartments- Id, address, monthly_rent, square_feet
# tenants - Id, name, age, apartment -ID

# Use enumerables to -
  # Print all the addresses for the apartments
# apartments.map do |pizza|
# puts pizza[:address]
# end

  # Print all the names for tenants
  # tenants.each do |pie|
  #   puts pie[:name]
  # end
  # Print only apartments that are less then 700 in rent
#   apartments.select do |fruit|
#      if fruit[:monthly_rent] < 700
#        puts fruit[:address]
#   end
# end
  # Print only tenants that are over the age of 44
  # tenants.select do |carrot|
  #   if carrot[:age] > 44
  #     puts carrot[:name]
  #   end
  # end
  # Print only tenants that have an apartment id of 1
  # tenants.select do |apple|
  #   if apple[:id] == 1
  #     puts apple[:name]
  #   end
  # end

  # Print all the tenants in order from youngest to oldest
#   order = tenants.sort_by do |maple|
#    maple[:age]
#   end
# puts order

  # Print the names of all the tenants alphabetically
  # alpha = tenants.sort_by do |cheese|
  #   cheese[:name]
  # end
  # puts alpha

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # apartments.each do |address|
  #   tenants.each do |tenant|
  #      puts "#{tenant[:name]} lives at #{address[:address]}"
  #    end
  #  end
  # When printing all apartments, under each apartment print all of its tenants
apartments.each do |apartments|
    tenants.each do |tenants|
       tenants[:name]
       if apartments[:id] == tenants[:id]
         puts "#{apartments[:address]}"
         puts "#{tenants[:name]}"
       end
  end
end
