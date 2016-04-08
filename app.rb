require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

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

  # Use enumerables to -
    # Print all the addresses for the apartments
    data[:apartments].each {|ap| puts ap[:address]}
    # Print all the names for tenants
    data[:tenants].each {|t| puts t[:name]}
    # Print only apartments that are less then 700 in rent
    data[:apartments].each do |ap|
      if ap[:monthly_rent] < 700 then puts ap[:address] end
      end
    # Print only tenants that are over the age of 44
    data[:tenants].each do |t|
      if t[:age]>44
         puts t[:name]
      end
    end

    # Print only tenants that have an apartment id of 1
    data[:tenants].each do |t|
      if t[:id]==1
         puts t[:name]
      end
    end
    # Print all the tenants in order from youngest to oldest
    sorted_tenants = data[:tenants].sort_by!{|t| t[:age]}
    puts sorted_tenants
    puts "*********** Print all the tenants in order from youngest to oldest"
    sorted_tenants.each {|t| puts t[:name]}
    # Print the names of all the tenants alphabetically
    sorted_tenants = data[:tenants].sort_by!{|t| t[:name]}
    puts "*********** Print the names of all the tenants alphabetically"
    sorted_tenants.each {|t| puts t[:name]}

    ## More challenging
    # When printing tenants also print out the address that the tenant resides in.
    puts "*********** When printing tenants also print out the address that the tenant resides in."
    data[:tenants].each do |t|
      puts t[:name].to_s + " ,who lives at " + data[:apartments].find {|ap| ap[:id]=t[:apartment_id]}[:address].to_s
    end
    # When printing all apartments, under each apartment print all of its tenants
    data[:apartments].each do |ap|
      puts "The following people live in apartment number " + ap[:id].to_s
      data[:tenants].each_index.select{|i| data[:tenants][i][:apartment_id] == ap[:id]}.each {|t| puts data[:tenants][t][:name]}
      puts "********"
    end

#-------------------------Part 2-------------------------------

    puts "Pick a number, 'menu' for list of options, 'exit' to exit ;)"
      userInput=nil
      userInput = gets.chomp
        while !(userInput==nil)
          case userInput
          when "1"
             data[:apartments].each {|ap| puts "Property: #" + ap[:id].to_s + "; Located at: " + ap[:address].to_s}
             userInput = gets.chomp
          when "2"
             data[:tenants].each {|t| puts "Tenant ID:" + t[:id].to_s + "; Tenant Name:" + t[:name].to_s + ";"}
             userInput = gets.chomp
          when "3"
             data[:apartments].each do |ap|
               puts "The following people live in apartment number " + ap[:id].to_s
               data[:tenants].each_index.select{|i| data[:tenants][i][:apartment_id] == ap[:id]}.each {|t| puts data[:tenants][t][:name]}
               puts "------------------------"
             end
             userInput = gets.chomp
          when "4"
            data[:tenants].each {|t| puts "Tenant ID:" + t[:id].to_s + " Tenant Name:'" + t[:name].to_s + "';"}
            puts "Enter the 'id' without the quotes to search for tenant record"
            userInput = gets.chomp
            puts userInput
              apartment_id = nil
              apartment_id = data[:tenants].find{|ap| ap[:id] == userInput.to_i}[:apartment_id]
              puts "Tenants address: " + data[:apartments].find{|ap| ap[:id] == apartment_id}[:address].to_s
            userInput = gets.chomp
          when "exit"
              puts " Beep Boop Boop Goodbye *_* -_- *_* "
              break
          when "menu"
              puts "'1' - Option to view all the apartments so that I can get an overview of my properties.
                    '2' - Option view all the tenants so that I can get an overview of my tenants
                    '3' - Option to view all the apartments with their tenants so that I can get an overview of Occupancy.
                    '4' - Search tenant name to get tenant address


                    "
              userInput = gets.chomp
          else
              puts "What do you mean? Pick a number, 'menu' for list of options, 'exit' to exit ! ;)"
              userInput = gets.chomp
              next
            end
        end




    # ### Gold:
    # ```
    # - I should be allowed to remove a tenant from an apartment so that I can track evictions/lease ends
    # - I should be allowed to add a tenant to an apartment so that I can track occupancy.
    # - I should be allowed to create a new apartment so that I can track new properties in my books
    # - I should be allowed to create a new tenant so that I can track new tenants in my books.
    # ```
    #
    # ### DO MOAR
    # If you've completed all the above features. Add more! Be creative!
    #
