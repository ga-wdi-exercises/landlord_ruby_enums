require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
apartments = data[:apartments]
tenants = data[:tenants]

ruby_apartments = []
ruby_tenants = []
#
# # First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
#   # Explain how the data is structured
#       #the data is structured as two arrays containing a number of hashes
#   # What are the properties for each of the two types of hashes
#       #the apartments hash has an ID, address, monthly rent, and address
#       #the tenants has has ID, name, age, and apartment id
#
# # Use enumerables to -
#   # Print all the addresses for the apartments
#   puts '****Apartment Address'
#   apartments.each do |place|
#     puts place[:address]
#     tenants.each do |person|
#       if person[:apartment_id] == place[:id]
#         puts person
#       end
#     end
#   end
#
#   # Print all the names for tenants
#   puts '****Tenant Names'
#   tenants.each do |person|
#     puts person[:name]
#
#   end
#   # Print only apartments that are less then 700 in rent
# puts '****Low Rent'
#   apartments.each do |place|
#     if place[:monthly_rent] < 700
#       puts place
#       tenants.each do |person|
#         if person[:apartment_id] == place[:id]
#           puts person
#         end
#       end
#     end
#   end
#   # Print only tenants that are over the age of 44
# puts '****Older Tenants'
#   tenants.each do |person|
#     if person[:age] > 44
#       puts person
#     end
#   end
#   # Print only tenants that have an apartment id of 1
#   puts '**** By APT ID'
#   tenants.each do |person|
#     if person[:apartment_id] == 1
#       puts person
#       apartments.each do |place|
#         if place[:id] == person[:apartment_id]
#           puts place
#         end
#       end
#     end
#   end
#   # Print all the tenants in order from youngest to oldest
#   puts '**** Sort by Age'
#   tenants.sort_by! do |value|
#     value[:age]
#   end
#
#   tenants.each do |person|
#     puts person
#     apartments.each do |place|
#       if place[:id] == person[:apartment_id]
#         puts place
#       end
#     end
#   end
#
#   # Print the names of all the tenants alphabetically
#
#   tenants.sort_by! do |name|
#     name[:name].downcase
#   end
#
#   tenants.each do |person|
#     puts person
#     apartments.each do |place|
#       if place[:id] == person[:apartment_id]
#         puts place
#       end
#     end
#   end

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants

  ruby_apartments = apartments.each do |place|
    Apartment.new(place[:id], place[:address], place[:monthly_rent], place[:square_feet])
  end

  ruby_tenants = tenants.each do |person|
    Tenant.new(person[:id], person[:name], person[:age], person[:apartment_id])
  end

  puts ruby_tenants
  puts ruby_apartments


  puts "Welcome to your Landlord Program"
  puts "Press 1 to access tenants"
  puts "Press 2 to access apartments"
  input = gets.chomp

  case input
  when '1'
    puts "Type '1' to view all tenants"
    puts "Type '2' to view tenant address by name"
    puts "Type '3' to adjust tenants"
      tOption = gets.chomp
      case tOption
      when '1'
        tenants.each {|person| puts person}

      when '2'
        puts 'Enter Tenant Name'
        tName = gets.chomp
        tenants.each do |person|
          if person[:name] == tName
            idNum = person[:apartment_id]
            apartments.each do |place|
              if idNum == place[:id]
                puts place
              end
            end
          end
        end

      when '3'
        puts "Type '1' to remove tenant from apartment"
        puts "Type '2' to add tenant to an apartment"
        puts "Type '3' to add new tenant"
        tOptionTwo = gets.chomp
        case tOptionTwo
        when '1'
          apartments.each do |place|
            puts place[:address]
            tenants.each do |person|
              if person[:apartment_id] == place[:id]
                puts person
              end
            end
          end

          puts "Type tenant name to remove him from the apartment"
          tName = gets.chomp
          tenants.each do |person|
            if person[:name] == tName
              person[:apartment_id] = ''
              puts "#{person[:name]} removed from apartment"
            end
          end

        when '2'
          apartments.each do |place|
            puts place[:address]
            tenants.each do |person|
              if person[:apartment_id] == place[:id]
                puts person
              end
            end
          end

          puts "Type name of tenant"
          tName2 = gets.chomp
          puts "Type the ID of the apartment you want to move him to"
          aptID = gets.chomp.to_i
          tenants.each do |person|
            if person == tName2
              person[:apartment_id] = aptID
              puts "#{person} moved to apartment with ID of #{aptID}"
            end
          end

        when '3'
          newTenant = {:id => 0, :name => '', :age => 0, :apartment_id => 0 }
          puts "Type the tenant ID"
          newTenant[:id] = gets.chomp.to_i
          puts "Type the name of tenant"
          newTenant[:name] = gets.chomp
          puts "Type the age of tenant"
          newTenant[:age] = gets.chomp.to_i
          puts "Type the apartment ID of tenant"
          newTenant[:apartment_id] = gets.chomp.to_i
          puts "New tenant Added"
          tenants.push(newTenant)
          puts tenants
        end

      end







  when '2'
    puts "Type '1' to view all apartments"
    puts "Type '2' to view all tenants that live in each apartment"
    puts "Type '3' to add apartment"
    aOption = gets.chomp

    case aOption
    when '1'
      apartments.each {|place| puts place}

    when '2'
      apartments.each do |place|
        puts place[:address]
        tenants.each do |person|
          if person[:apartment_id] == place[:id]
            puts person
          end
        end
      end

    when '3'
      newApartment = {:id => 0, :address => '', :monthly_rent => 0, :square_feet => 0}
      puts 'What is the Apartment ID?'
      newId = gets.chomp.to_i
      newApartment[:id] = newId
      puts 'What is the Address?'
      newAddress = gets.chomp
      newApartment[:address] = newAddress
      puts 'What is the monthly rent?'
      newRent = gets.chomp.to_i
      newApartment[:monthly_rent] = newRent
      puts 'What is the square footage?'
      newFootage = gets.chomp.to_i
      newApartment[:square_feet] = newFootage
      puts 'Added Apartment'
      puts newApartment
      apartments.push(newApartment)


    end
  end
