require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]
require_relative "models/apartment"
require_relative "models/tenant"

ruby_apartments = []
ruby_tenants = []

apartments.each do |unit|
  ruby_apartments << Apartment.new(unit[:id], unit[:address], unit[:monthly_rent], unit[:square_feet])
end

tenants.each do |tenant|
  ruby_tenants << Tenant.new(tenant[:id], tenant[:name], tenant[:age], tenant[:apartment_id])
end

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
      # data has 2 hashes, one for apartments and one for tenants
  # What are the properties for each of the two types of hashes
      # apartment hash contains property info -- an id, address, monthly_rent, and square_feet
      # tenant hash contains the tenant info -- an id, name, age, apartment_id
# Use enumerables to -
  # Print all the addresses for the apartments
      # apartments.each { |unit| puts unit[:address] }
  # Print all the names for tenants
      # tenants.each { |tenant| puts tenant[:name] }
  # Print only apartments that are less then 700 in rent
      # apartments.each do |unit|
      #   if unit[:monthly_rent] < 700
      #     puts unit
      #   end
      # end
  # Print only tenants that are over the age of 44
      # tenants.each do |tenant|
      #   if tenant[:age] > 44
      #     puts tenant
      #   end
      # end
  # Print only tenants that have an apartment id of 1
    # tenants.each do |tenant|
    #   if tenant[:apartment_id] == 1
    #     puts tenant
    #   end
    # end
  # Print all the tenants in order from youngest to oldest
      # puts tenants.sort_by { |tenant| tenant[:age] }
  # Print the names of all the tenants alphabetically
      # tenants.sort_by { |tenant| puts tenant[:name] }
  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
      # tenants.each do |tenant|
      #   tenant[:address]
      #     apartments.each do |unit|
      #       if unit[:id] == tenant[:apartment_id]
      #         tenant[:address] = unit[:address]
      #       end
      #     end
      # end
      # puts tenants
  # When printing all apartments, under each apartment print all of its tenants
      # apartments.each do |unit|
      #   unit[:tenants] = []
      #     tenants.each do |tenant|
      #       if tenant[:apartment_id] == unit[:id]
      #         unit[:tenants].push(tenant[:name])
      #       end
      #     end
      # end
      # puts apartments

  input = 'menu'
  while input == 'menu'
    puts "Type 1 to view all apartments\nType 2 to view all tenants.\nType 3 view all apartments with their tenants."
    input = gets.chomp
      if input == '1'
          ruby_apartments.each { |apartment| puts "apartment address: #{apartment.address}, monthly rent: $#{apartment.monthly_rent}, square feet: #{apartment.square_feet}" }
          puts "Need anything else?\nType 'menu' to return to main menu, or 'quit' to quit."
          input = gets.chomp
          if input == 'quit'
            break
          end
      elsif input == '2'
          ruby_tenants.each { |tenant| puts "tenant name: #{tenant.name}, age: #{tenant.age}" }
          puts "Need anything else?\nType 'menu' to return to main menu, or 'quit' to quit."
          input = gets.chomp
          if input == 'quit'
            break
          end
      elsif input == '3'
          apartments.each do |apartment|
            apartment[:tenants] = []
              tenants.each do |tenant|
                if tenant[:apartment_id] == apartment[:id]
                  apartment[:tenants].push(tenant[:name])
                end
              end
            puts "apartment: #{apartment[:address]}, tenant(s): #{apartment[:tenants]}"
          end
          puts "Need anything else?\nType 'menu' to return to main menu, or 'quit' to quit."
          input = gets.chomp
          if input == 'quit'
            break
          end
      else
        puts "Invalid option.\nType 'menu' to return to main menu, or 'quit' to quit."
        input = gets.chomp
        if input == 'quit'
          break
        end
      end
  end
