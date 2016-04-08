require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes
    # The data is held inside a function that returns a hash with two key value (where the value is an array of objects) pairs: "apartments" and "tenants". Each hash in the apartments array contains the keys id, address, monthly_rent, square_feet. Each hash in the tenants array contains the keys id, name, age, and apartment_id.
#
# # Use enumerables to -
#   # Print all the addresses for the apartments
#
# all_addresses = apartments.map do |apartment|
#   apartment[:address]
# end
#
# puts all_addresses
#
#   # Print all the names for tenants
#
# all_names = tenants.map do |tenant|
#     tenant[:name]
#   end
#
#   puts all_names
#
#   # Print only apartments that are less then 700 in rent
#
# puts apartments.select {|apartment| apartment[:monthly_rent] < 700}
#
#   # Print only tenants that are over the age of 44
#
# puts tenants.select {|tenant| tenant[:age] > 44}
#
#   # Print only tenants that have an apartment id of 1
#
# puts tenants.select {|tenant| tenant[:apartment_id] == 1}
#
#   # Print all the tenants in order from youngest to oldest
#
# puts tenants.sort_by {|tenant| tenant[:age]}
#
#   # Print the names of all the tenants alphabetically
#
# puts tenants.sort_by {|tenant| tenant[:name].downcase}
#
#   ## More challenging
#   # When printing tenants also print out the address that the tenant resides in.
#   # When printing all apartments, under each apartment print all of its tenants
userInput = nil
while userInput != "exit" do
  puts "[Options Menu] \nType the number or phrase that cooresponds with your choice."
  puts "1: View all apartments"
  puts "2: View all tenants"
  puts "Exit: Close program"
  userInput = gets.chomp.downcase

        if userInput == "1"
            all_apartments = apartments.map do |apartment|
              apartment
            end

            puts all_apartments

        elsif userInput == "2"
          all_tenants = tenants.map do |tenant|
              tenant
            end

            puts all_tenants

  end
end
