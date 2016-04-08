require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# - I should be allowed an option to view all the apartments with their tenants so that I can get an overview of Occupancy.
# - I should be able to find where a tenant lives based on tenant name in case of emergencies.

puts "Hello welcome to this app."
puts "Type '1' to view all of your apartments"
puts "Type '2' to view all of your tenants"
puts "Type '3' to view all apartments with their tenants"
track_number = gets.chomp
if track_number == "1"
  puts apartments
elsif track_number == "2"
  puts tenants
elsif track_number == "3"
  puts
# attempting to find where a tenant lives based on the tenant name
  tenants_with_address = []
tenants_with_address = tenants.each do |person|
  apartments.each do |address|
    newlist << [tenants[:name], apartments[:address]]
  end
end

else
  puts "Hello welcome to this app."
  puts "Type '1' to view all of your apartments"
  puts "Type '2' to view all of your tenants"
  puts "Type '3' to view all apartments with their tenants"
end







# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # Inside of the function named "data" there are two arrays named "apartments" and "tenants". Body of these arrays are comprised of multiple hashes that contain properties about the apartment or tenant
  # What are the properties for each of the two types of hashes
  # Properties of hashes in apartments array: id, address, monthly_rent, square_feet
  # Properties of hashes in tenants array:  id, name, age, apartment_id


# Use enumerables to -
  # Print all the addresses for the apartments

  # apartments.each do |apartment|
  #   puts apartment[:address]
  # end

  # Print all the names for tenants

  # tenants.each do |namez|
  #   puts namez[:name]
  # end

  # Print only apartments that are less then 700 in rent

 # cheap_apartments = apartments.select do |apartment|
 #   apartment[:monthly_rent] < 700
 # end
 # puts cheap_apartments

  # Print only tenants that are over the age of 44

# old_people = tenants.select do |person|
#   person[:age] > 44
# end
# puts old_people

  # Print only tenants that have an apartment id of 1

  # oneid = tenants.select do |person|
  #   person[:apartment_id] == 1
  # end
  # puts oneid

  # Print all the tenants in order from youngest to oldest

# sortage = tenants.sort_by do |tenant|
#   tenant[:age]
# end
# puts sortage


  # Print the names of all the tenants alphabetically

  # fromatoz = tenants.sort_by do |tenant|
  #   tenant[:name].downcase
  # end
  # puts fromatoz

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.

#   newlist = []
# tenants_with_address = tenants.each do |person|
#   apartments.each do |apartment|
#     newlist << [tenants, apartments[:apartment_id]]
#   end
# end


  # When printing all apartments, under each apartment print all of its tenants
