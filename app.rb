require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
apartments = data[:apartments]
tenants = data[:tenants]
ruby_apartments = []
ruby_tenants = []

apartments.each do |apartment|
   ruby_apartments << Apartment.new(apartment[:id], apartment[:address], apartment[:monthly_rent], apartment[:square_feet])
end

tenants.each do |tenant|
  ruby_tenants << Tenant.new(tenant[:id], tenant[:name], tenant[:age], tenant[:apartment_id])
end

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes

# Use enumerables to -
  # Print all the addresses for the apartments
  # ruby_apartments.each do |apartment|
  #   puts apartment.get_address
  # end

  # Print all the names for tenants
  # ruby_tenants.each do |tenant|
  #   puts tenant.get_name
  # end

  # Print only apartments that are less then 700 in rent
  # ruby_apartments.each do |apartment|
  #   if apartment.get_monthly_rent < 700
  #   puts apartment.get_address
  #   end
  # end

  # Print only tenants that are over the age of 44
  # ruby_tenants.each do |tenant|
  #   if tenant.get_age > 44
  #   puts tenant.get_name
  #   end
  # end

  # Print only tenants that have an apartment id of 1
  # ruby_tenants.each do |tenant|
  #   if tenant.get_apartment_id != 1
  #   next
  #   else
  #   puts tenant.get_name
  #   end
  # end

  # Print all the tenants in order from youngest to oldest
  # ruby_tenants.sort_by! { |tenant| tenant.get_age}
  # ruby_tenants.each do |tenant|
  #   puts tenant.get_name
  # end

  # Print the names of all the tenants alphabetically
  # ruby_tenants.sort_by! { |tenant| tenant.get_name}
  # ruby_tenants.each do |tenant|
  #   puts tenant.get_name
  # end


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

puts "WELCOME TO BOB PIZZA'S APP PROGRAM. Press enter to continue."
user_input = gets.chomp

while user_input != "end"

puts " "
puts "Please enter the number to access the option that you want. Type end whenever you want to close the program"
puts "1. View all the apartments."
puts "2. View all the tenants."

user_input = gets.chomp

  if user_input == "1"
    puts " "
    puts "Here's a list of all the apartments:"
    puts " "
    ruby_apartments.sort_by! { |apartment| apartment.get_address}
    ruby_apartments.each do |apartment|
      puts apartment.get_address
    end
  elsif user_input == "2"
    puts " "
    puts "Here's a list of all the tenants:"
    puts " "
    ruby_tenants.sort_by! { |tenant| tenant.get_name}
    ruby_tenants.each do |tenant|
      puts tenant.get_name
    end
  end
  puts " "
  puts "Press enter to continue or type end to exit the program?"
  user_input = gets.chomp
end
