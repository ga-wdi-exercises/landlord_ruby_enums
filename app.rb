require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
apartments = data[:apartments]
tenants = data[:tenants]

userInput = nil
while userInput != "exit" do
  puts "[Options Menu] \nType the number or phrase that co4
  responds with your choice."
  puts "1: View all apartments"
  puts "2: View all tenants"
  puts "3: View all apartments with occupancy"
  puts "4: View all tenants with address"
  puts "Exit: Close program"
  userInput = gets.chomp.downcase

      if userInput == "1"
        apartments.map do |apartment|
          puts "Address: " + apartment[:address]
          puts "Size: " + "#{apartment[:square_feet]}" + " sq ft"
          puts "Monthly Rent: $" + "#{apartment[:monthly_rent]}"
          puts "=" * 50
        end

      elsif userInput == "2"
        tenants.map do |tenant|
            puts "Name: " + tenant[:name]
            puts "Age: " + "#{tenant[:age]}"
            puts "=" * 50
        end

      elsif userInput == "3"
        apartments.each do |apartment|
          puts "=" * 50
          puts apartment[:address]
          puts "=" * 50
          tenants_of_apartment = tenants.select{|tenant| tenant[:apartment_id] == apartment[:id]}
          tenants_of_apartment.each do |tenant|
            puts tenant[:name]
          end
          puts nil
        end

      elsif userInput == "4"
        tenants.each do |tenant|
          tenants_apartment_id = tenant[:apartment_id]
          matching_apartments = apartments.find do |apartment|
            apartment[:id] == tenants_apartment_id
        end

        puts "#{tenant[:name]} | #{matching_apartments[:address]}".center(50)
        puts "=" * 50
        end

  end
end
