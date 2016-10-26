require_relative "data"
# require 'pry'
require_relative "models/apartment"
require_relative "models/tenant"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
#   There are separate arrays for apartments and tenants. The
#      tenants array links to the apartments by containing the id
#       of the apartment that they live in

  # What are the properties for each of the two types of hashes
        # apartments: id,address,monthly_rent,square_feet
        # tenants: id,name,age,apartment_id

# Use enumerables to -

# -------------------------------------------------------
#   WARNING: puts commented out, so nothing will print
# -------------------------------------------------------

 # OLD COMMENTED CODE BEGINS HERE
   # Print all the addresses for the apartments
     def addresses(aptArr)
       aptArr.each do |apt|
         #puts apt[:address]
       end
     end
       # Print all the names for tenants
     def addresses(tenantArr)
       tenantArr.each do |tenant|
         #puts tenant[:name]
       end
     end
       # Print only apartments that are less then 700 in rent
     def addresses(aptArr)
       aptArr.each do |apt|
         if apt[:monthly_rent] < 700
           #puts apt[:monthly_rent]
         end
       end
     end
       # Print only tenants that are over the age of 44
     def addresses(tenantArr)
       tenantArr.each do |tenant|
         if tenant[:age] > 44
           #puts tenant[:age]
         end
       end
     end
       # Print only tenants that have an apartment id of 1
     def addresses(tenantArr)
       tenantArr.each do |tenant|
         if tenant[:apartment_id] == 1
           #puts tenant[:apartment_id]
         end
       end
     end
       # Print all the tenants in order from youngest to oldest
     def addresses(tenantArr)
       newArray = tenantArr.sort_by {|tenant| tenant[:age]}
       newArray.each do |tenant|
         #puts tenant[:age]
       end
     end
       # Print the names of all the tenants alphabetically
     def addresses(tenantArr)
       newArray = tenantArr.sort_by {|tenant| tenant[:name]}
       newArray.each do |tenant|
         #puts tenant[:name]
       end
     end
       ## More challenging

       # When printing tenants also print out the address that the tenant resides in.
     def tenantHome(aptArr,tenantArr)
       tenantArr.each do |tenant|
         tenantApt = tenant[:apartment_id]
         aptArr.each do |apt|
           if apt[:id] == tenantApt
             puts "#{tenant[:name]} lives at: #{apt[:address]}"
           end
         end
       end
     end
       # When printing all apartments, under each apartment print all of its tenants

     def aptTenants(aptArr,tenantArr)
       aptArr.each do |apt|
         aptID = apt[:id]
         tenantArr.each do |tenant|
           if tenant[:apartment_id] == aptID
             puts "#{tenant[:name]} lives at #{apt[:id]}"
           end
         end
       end
     end
       # apartments: id,address,monthly_rent,square_feet
       # tenants: id,name,age,apartment_id

     def removeTenant(tenantArr,id)
       tenantArr.each do |tenant|
         if tenant[:id] == id
           tenant[:apartment_id] = 0
         end
       end
     end


     #Add new apartment
     def addApt(id,address,monthly_rent,square_feet)
       hash = {:id => id}
       hash[:address] = address
       hash[:monthly_rent] = monthly_rent
       hash[:square_feet] = square_feet
       return hash
     end
     #Add new tenant
     def addTenant(id,name,age,apartment_id)
       hash = {:id => id}
       hash[:name] = name
       hash[:age] = age
       hash[:apartment_id] = apartment_id
       return hash
     end

    #passes in data to the objects
    apartments.map {|apts| ruby_apartments = Apartment.new(apts[:id],apts[:address],apts[:monthly_rent],apts[:square_feet])}
    tenants.map {|tenant| ruby_tenants = Tenant.new(tenant[:id],tenant[:name],tenant[:age],tenant[:apartment_id])}

    # puts Apartment.getApts

    answer = 0
    until answer == 99
      puts " ",
      "Welcome Bob! Here are the following options and commands:",
      "1 - View all of your apartments",
      "2 - View all of your tenants",
      "3 - View all the apartments with their tenants",
      "4 - View tenant's home address based on name",
      "5 - Remove tenant from property",
      "6 - Add Apartment",
      "7 - Add Tenant",
      "99 - Exit the program",
      " "

      answer = gets.to_i
      puts ' '
      if answer == 1
        xx = Apartment.getApts
        xx.map {|apt| puts "(ID) #{apt[:id]}   (Address) #{apt[:address]}   (Rent) #{apt[:monthly_rent]}   (Square Feet) #{apt[:square_feet]}"} #id,address,monthly_rent,square_feet }

      elsif answer == 2
        xy = Tenant.getTenants
          xy.map { |tenant| puts "(ID) #{tenant[:id]}   (Name) #{tenant[:name]}    (Age) #{tenant[:age]}    (AptID) #{tenant[:apartment_id]}"} #id,address,monthly_rent,square_feet

      elsif answer == 3

          aptTenants(Apartment.getApts,Tenant.getTenants)

      elsif answer == 4

          tenantHome(Apartment.getApts,Tenant.getTenants)

      elsif answer == 5

          puts ' '
          puts "Input Tenant ID"
          id = gets.to_i
          puts ' '
          removeTenant(Tenant.getTenants,id)
          #add in a message of who you removed

      elsif answer == 6

          puts "Enter the id: "
          id = gets.to_i
          puts "Enter the address: "
          address = gets.chomp
          puts "Enter the rent amount: "
          monthly_rent = gets.to_i
          puts "Enter the sq feet: "
          square_feet = gets.to_i
          newThing = Apartment.new(id,address,monthly_rent,square_feet)

      elsif answer == 7 # tenants: id,name,age,apartment_id

          puts "Enter the id: "
          id = gets.to_i
          puts "Enter the name: "
          name = gets.chomp
          puts "Enter the age: "
          age = gets.to_i
          puts "Enter the apartment_id: "
          apartment_id = gets.to_i
          newThing = Tenant.new(id,name,age,apartment_id)

      end
    end

# [1, 2, 3].map { |n| n * n } #=> [1, 4, 9]

# puts tenants.inspect
# p tenants.lengt



# binding.pry
