require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"

apartments = data[:apartments]
tenants = data[:tenants]

ruby_apartments = []
ruby_tenants = []

ruby_apartments = apartments.map {|ap| Apartment.new(ap, tenants)}
ruby_tenants = tenants.map {|t| Tenant.new(t)}



# ruby_apartments.each {|ap| puts ap.address}
# ruby_tenants.each {|t| puts t.name}

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  #------------------------------------
  # The data is structed into two lists, tenants and apartments
  # Each list contains list specific metrics (id, address, name, monthly_rent, square_feet, etc.)
  #------------------------------------
  # What are the properties for each of the two types of hashes
  #------------------------------------
  # apartment(id, address, monthly_rent, square_feet)
  # tenants(id, name, age, apartment_id)
  #------------------------------------

  # # Use enumerables to -
  #   # Print all the addresses for the apartments
  #   data[:apartments].each {|ap| puts ap[:address]}
  #   # Print all the names for tenants
  #   data[:tenants].each {|t| puts t[:name]}
  #   # Print only apartments that are less then 700 in rent
  #   data[:apartments].each do |ap|
  #     if ap[:monthly_rent] < 700 then puts ap[:address] end
  #     end
  #       # second solution using .select
  #
  #   cheap_apartments = data[:apartments].select do |ap|
  #     ap[:monthly_rent]<700
  #   end
  #
  #   puts "I found #{cheap_apartments.length} apartments that match your criteria"
  #   puts cheap_apartments
  #
  #   # Print only tenants that are over the age of 44
  #   data[:tenants].each do |t|
  #     if t[:age]>44
  #        puts t[:name]
  #     end
  #   end
  #
  #   # Print only tenants that have an apartment id of 1
  #   data[:tenants].each do |t|
  #     if t[:id]==1
  #        puts t[:name]
  #     end
  #   end
  #   # Print all the tenants in order from youngest to oldest
  #   sorted_tenants = data[:tenants].sort_by!{|t| t[:age]}
  #   puts sorted_tenants
  #   puts "*********** Print all the tenants in order from youngest to oldest"
  #   sorted_tenants.each {|t| puts t[:name]}
  #
  #   # Print the names of all the tenants alphabetically
  #   sorted_tenants = data[:tenants].sort_by!{|t| t[:name]}
  #   puts "*********** Print the names of all the tenants alphabetically"
  #   sorted_tenants.each {|t| puts t[:name]}
  #
  #   ## More challenging
  #   # When printing tenants also print out the address that the tenant resides in.
  #   puts "*********** When printing tenants also print out the address that the tenant resides in."
  #   data[:tenants].each do |t|
  #     puts t[:name].to_s + " ,who lives at " + data[:apartments].find {|ap| ap[:id] == t[:apartment_id]}[:address].to_s
  #   end
  #   # When printing all apartments, under each apartment print all of its tenants
  #   data[:apartments].each do |ap|
  #     puts "The following people live in apartment number " + ap[:id].to_s
  #     data[:tenants].each_index.select{|i| data[:tenants][i][:apartment_id] == ap[:id]}.each {|t| puts data[:tenants][t][:name]}
  #     puts "********"
  #   end

#-------------------------Part 2-------------------------------

    puts "
          Welcome to Tenant / Apartment Management System
          Input following commands to proceed
          "
      userInput=nil

      userInput = 'menu'
        while !(userInput==nil)
          case userInput
          when "1"
             ruby_apartments.each {|ap| puts "Property:# #{ap.id}; Located at: #{ap.address}"}
             userInput = gets.chomp
          when "2"
             ruby_tenants.each {|t| puts "Tenant ID: #{t.id}; Tenant Name: #{t.name};"}
             userInput = gets.chomp
          when "3"
             ruby_apartments.each do |ap|
               puts "The following people live in apartment number #{ap.id}."
               ruby_tenants.each_index.select{|i| ruby_tenants[i].apartment_id == ap.id}.each {|t| puts ruby_tenants[t].name}
               puts "------------------------"
             end
             userInput = gets.chomp
          when "4"
            ruby_tenants.each {|t| puts "Tenant ID: #{t.id}; Tenant Name:'#{t.name}';"}
            puts "Enter tenant 'id' to search for tenant address"
            userInput = gets.chomp
              apartment_id = nil
              apartment_id = ruby_tenants.find{|ap| ap.id == userInput.to_i}.apartment_id
              puts "Tenants address: #{ruby_apartments.find{|ap| ap.id == apartment_id}.address}"
            userInput = gets.chomp
          when "5"
            tenantManipulator=[];
            # Print list of apartments with IDs and Addresses
            ruby_apartments.each {|ap| puts "Apartment ID: #{ap.id}; Apartment Address:#{ap.address};"}
            # User inputs apartment selection
            puts "Enter apartment 'id' to search for apartment occupancy list"
            userInput = gets.chomp
            #Output apartment's occupants list
            occupants = ruby_apartments.find{|ap| ap.id == userInput.to_i}.occupants
            puts "Apartment number #{userInput.to_i} has #{occupants.size} occupant(s), detailed list is included below "
            ruby_apartments.find{|ap| ap.id == userInput.to_i}.occupants.each_with_index {|occupant, index| puts "#{index+1} . #{occupant[:name]}"}
            userInput = gets.chomp
          when "6"
            # print tenant array as numbered list

            # ask for action.. add remove transfer
            puts "Type 'Add', 'Delete', or 'Transfer' to manage Tenant Lists" #Otherwise, pick a number (1-7), type in 'menu' for a list of options, or 'exit' to exit."
            userInput = gets.chomp

            if userInput.downcase =~ /add/
                newTenant = {}
                newTenant[:id] = ruby_tenants.size+1
                puts "Enter new tenant's name"
                newTenant[:name] = gets.chomp
                puts "Enter new tenant's age"
                newTenant[:age] = gets.chomp
                ruby_apartments.each {|ap| puts "Property:# #{ap.id}; Located at: #{ap.address}"}
                puts "Enter new tenant's apartment id"
                newTenant[:apartment_id] = gets.chomp
                ruby_tenants.push(Tenant.new(newTenant))
                puts "New tenant has been added to the list"
                ruby_tenants.each {|t| puts "Tenant ID: #{t.id}; Tenant Name: #{t.name};"}
            elsif userInput.downcase =~ /delete/
                ruby_tenants.each {|t| puts "Tenant ID: #{t.id}; Tenant Name: #{t.name};"}
                puts "Input tenant ID"
                userInput=gets.chomp
                apartmentId = nil
                apartmentId = ruby_tenants.find{|ap| ap.id == userInput.to_i}.apartment_id
                apartmentOccupancy = ruby_apartments.find{|ap| ap.id == apartmentId}.occupants
                puts "This person occupied apartment number #{apartmentId}, full list of occupants: #{apartmentOccupancy}"
                apartmentOccupancy.delete_if {|t| t[:id] == userInput.to_i}
                puts "This occupant has been removed from apartment's #{apartmentId} occupancy list as presented below: #{apartmentOccupancy}"
                puts "Old tenant list"
                ruby_tenants.each {|t| puts "Tenant ID: #{t.id}; Tenant Name: #{t.name};"}
                ruby_tenants.delete_if {|t| t.id == userInput.to_i}
                puts "Updated tenant list with tenant removed"
                ruby_tenants.each {|t| puts "Tenant ID: #{t.id}; Tenant Name: #{t.name};"}
            elsif userInput.downcase =~ /transfer/
                ruby_tenants.each {|t| puts "Tenant ID: #{t.id}; Tenant Name: #{t.name};"}
                puts "Input the ID of the tenant you want to transfers"
                tenantID =gets.chomp
                apartmentId = nil
                apartmentId = ruby_tenants.find{|ap| ap.id == tenantID.to_i}.apartment_id
                apartmentOccupancy = ruby_apartments.find{|ap| ap.id == apartmentId}.occupants
                apartmentOccupancy.delete_if {|t| t[:id] == tenantID.to_i}
                ruby_apartments.each {|ap| puts "Property:# #{ap.id}; Located at: #{ap.address}"}
                puts "Input the ID of the apartment where you would like to transfer this tenant"
                userInput =gets.chomp
                newApartmentOccupancy = ruby_apartments.find{|ap| ap.id == userInput.to_i}.occupants
                puts "This is the old occupancy list"
                newApartmentOccupancy.each {|t| puts t}
                ruby_tenants.find{|ap| ap.id == tenantID.to_i}.apartment_id = userInput.to_i
                tenants.find{|t| t[:id] == tenantID.to_i}[:apartment_id] = userInput.to_i
                newApartmentOccupancy.push(tenants.find{|t| t[:id] == tenantID.to_i})
                puts "This is a new occupancy list"
                newApartmentOccupancy.each {|t| puts t}
            else
               puts "unrecognized command"
            end

          when "7"
              puts "Type 'delete' or 'add' to proceed"
              userInput = gets.chomp

              if userInput.downcase =~ /delete/
                  ruby_apartments.each {|ap| puts "Property:# #{ap.id}; Located at: #{ap.address}"}
                  puts "Input the ID of the apartment you would like to delete from the records"
                  userInput = gets.chomp
                  ruby_apartments.delete_if {|ap| ap.id == userInput.to_i}
                  puts "Updated list is presented below"
                  ruby_apartments.each {|ap| puts "Property:# #{ap.id}; Located at: #{ap.address}"}
              elsif userInput.downcase =~ /add/
                newApartment = {}
                newApartment[:id] = ruby_apartments.size+1
                puts "Enter new apartment's address"
                newApartment[:address] = gets.chomp
                puts "Enter new apartment's monthly rent"
                newApartment[:monthly_rent] = gets.chomp
                puts "Enter new apartment's area in square feet"
                newApartment[:square_feet] = gets.chomp
                ruby_apartments.push(Apartment.new(newApartment,tenants))
                puts "New apartment has been added to the list"
                ruby_apartments.each {|ap| puts "Property:# #{ap.id}; Located at: #{ap.address}"}
              end

            userInput = gets.chomp
          when "exit"
              puts " Beep Boop Boop Goodbye  [0_0] [o_o] [*_*] [-_-] zzz "
              break
          when "menu"
              puts "
                    '1' - View all apartments
                    '2' - View all tenants
                    '3' - View all the apartments with their tenant occupants
                    '4' - Search tenant name to get tenant address
                    '5' - Get apartment's occupancy list
                    '6' - Tenant Management Menu (REMOVE/ADD/TRANSFER)
                    '7' - Apartment Management Menu (REMOVE/ADD)

                    'menu' - for menu
                    'exit' - to exit
                    "
              userInput = gets.chomp
          else
              puts "What do you mean? Pick a number, 'menu' for list of options, 'exit' to exit ! ;)"
              userInput = gets.chomp
              next
            end
        end
