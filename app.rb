require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes
  # apartments: id, address, monthly rent, and square feet.
  # tenants: id, name, age, apartment id.

# Use enumerables to -
  # Print all the addresses for the apartments
  # apartments.each{|apartment| puts apartment[:address]}
  # Print all the names for tenants
  # tenants.each{|full_name| puts full_name[:name]}
  # Print only apartments that are less then 700 in rent
  # less_than_700 = apartments.select do |apartment|
  #   apartment[:monthly_rent] < 700
  # end
  # puts less_than_700
  # Print only tenants that are over the age of 44
  # over_44 = tenants.select do |tenant|
  #   tenant[:age] > 44
  # end
  # puts over_44
  # Print only tenants that have an apartment id of 1
  # a_id_1 = tenants.select do |tenant|
  #   tenant[:apartment_id] == 1
  # end
  # print a_id_1
  # Print all the tenants in order from youngest to oldest
  # y_to_o = tenants.sort_by do |tenant|
  #   tenant[:age]
  # end
  # puts y_to_o
  # Print the names of all the tenants alphabetically
  # alpha = tenants.sort_by do |tenant|
  #   tenant[:name]
  # end
  # puts alpha
  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants


puts "Please select which list you would like to access."
puts "Enter [1] to view apartments, Enter [2] to view tenants, Enter [3] to quit."


input = gets.chomp.to_i
while input == 1 || 2 || 3

  if input == 1
    puts "Here is a list of apartment addresses."
    apartments.each{|apartment| puts apartment[:address]}
    puts "Would you like to see more details? Y/N"
    input_1 = gets.chomp.upcase
    if input_1 == "Y"
      apartments.each{|apartment| puts apartment}
      break
    else input_1 == "N"
      nil
      end
    break
  elsif input == 2
    puts "Here is a list of current tenants of the properties."
    tenants.each{|full_name| puts full_name[:name]}
    puts "Would you like to see more details? Y/N"
    input_2 = gets.chomp.upcase
    if input_2 == "Y"
      tenants.each{|tenant| puts tenant}
      break
    else input_2 == "N"
      nil
      end
    break
  elsif input == 3
    puts "Thank you for using this app. Have a nice day."
    break
  else
    puts "Please enter a valid selection."
  end

end
