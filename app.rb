require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes

# Use enumerables to -
  # Print all the addresses for the apartments
  # apartments.each do |apartment|
  #   puts apartment[:address]
  # end

  # Print all the names for tenants
  # tenants.each do |tenant|
  #   puts tenant[:name]
  # end

  # Print only apartments that are less then 700 in rent
  # apartments.each do |apartment|
  #   if apartment[:monthly_rent] < 700
  #   puts apartment[:address]
  #   end
  # end

  # Print only tenants that are over the age of 44
  # tenants.each do |tenant|
  #   if tenant[:age] > 44
  #   puts tenant[:name]
  #   end
  # end

  # Print only tenants that have an apartment id of 1
  # tenants.each do |tenant|
  #   if tenant[:apartment_id] != 1
  #   next
  #   else
  #   puts tenant[:name]
  #   end
  # end

  # Print all the tenants in order from youngest to oldest
  # puts tenants.sort_by! { |tenant| tenant[:age] }

  # Print the names of all the tenants alphabetically
  # puts tenants.sort_by { |tenant| tenant[:name] }


  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
#   tenants.each do |tenant|
#     apartments.each do |apartment|
#     if tenant[:apartment_id] == apartment[:id]
#     puts "#{tenant[:name]} lives at #{apartment[:address]}"
#   end
# end
# end

  # When printing all apartments, under each apartment print all of its tenants
  # apartments.each do |apartment|
  #   puts " "
  #   puts "#{apartment[:address]} Residents:"
  #   tenants.each do |tenant|
  #     if tenant[:apartment_id] == apartment[:id]
  #       puts tenant[:name]
  #     end
  #   end
  # end

puts "WELCOME TO BOB PIZZA'S APP PROGRAM. Press any keys to continue."
user_input = gets.chomp

while user_input != "end"

puts "Please enter the number to access the option that you want or type end to cancel out the program"
puts "1. View all the apartments."
puts "2. View all the tenants."

user_input = gets.chomp

  if user_input == "1"
    puts " "
    puts "Here's a list of all the apartments:"
    puts " "
    apartments.sort_by! { |apartment| apartment[:address]}
    apartments.each do |apartment|
      puts apartment[:address]
    end
  elsif user_input == "2"
    puts " "
    puts "Here's a list of all the tenants:"
    puts " "
    tenants.sort_by! { |tenant| tenant[:name]}
    tenants.each do |tenant|
      puts tenant[:name]
    end
  end
  puts " "
  puts "Would you like to continue or end the program? (type continue or end)"
  user_input = gets.chomp
end
