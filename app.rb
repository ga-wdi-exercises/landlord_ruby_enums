require_relative "models/apartment"
require_relative "models/tenant"

require_relative "data"
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
# x=data()
#
#   x[:apartments].each do |item|
#     puts item[:address]
#   end
# puts"---------------------"
#
#   # Print all the names for tenants
#   x[:tenants].each do |item|
#     puts item[:name]
#   end
#   puts"---------------------"
#
#   # Print only apartments that are less then 700 in rent
#   x[:apartments].each do |item|
#     if(item[:monthly_rent]<700)
#     puts item
#     end
#   end
#   puts"---------------------"
#
#
#   # Print only tenants that are over the age of 44
#   x[:tenants].each do |item|
#     if(item[:age]>44)
#     puts item
#     end
#   end
#   puts"---------------------"
#   # Print only tenants that have an apartment id of 1
#   x[:tenants].each do |item|
#     if(item[:apartment_id]==1)
#     puts item
#     end
#   end
#   puts"---------------------"
#   # Print all the tenants in order from youngest to oldest
#   puts x[:tenants].sort_by{|k| k[:age]}
#     puts"---------------------"
#   # Print the names of all the tenants alphabetically
#     puts x[:tenants].sort_by{|k| k[:name]}
#     puts"---------------------"


  # More challenging


#  When printing tenants also print out the address that the tenant resides in.-

  #   another = x[:tenants].map do |item|
  #
  #
  #       x[:apartments].length.times do |index|
  #         if(x[:apartments][index][:id]==item[:apartment_id])
  #           $saveindex = index
  #         end
  #       end
  #
  #       sd=x[:apartments][$saveindex][:address]
  #
  #       {id: item[:id], name: item[:name], age: item[:age], apartment_id: item[:apartment_id], address: sd }
  #
  #    end
  #
  #   puts another
  # puts"---------------------"
#
# def print_tenant(tenant, apartments)
# apartment= apartments.find { |apartment|  apartment[:id]==tenant[:apartment_id]}
# puts tenant[:name] + " "+apartment[:address]
# end
#
# print_tenant(tenants[0],apartments)



  #When printing all apartments, under each apartment print all of its tenants

# puts "after here"
# def print_aparments_with_tenants (apartment, tenants)
#
#     some_tenants = tenants.find_all {|tenant| tenant[:apartment_id]== apartment[:id]}
#
#     puts "The apartment address is: ----> " + apartment[:address] + "the followign are the tenants---->"
#
#     some_tenants.each do |tenant|
#     puts tenant[:name]
#     end
# end
#
#
# print_aparments_with_tenants(apartments[0], tenants)
#-------------------------------------------helper methods

def print_aparments_with_tenants (apartment, tenants)

    some_tenants = tenants.find_all {|tenant| tenant.apartment_id== apartment.id}

    puts "The apartment address is: ----> " + apartment.address + "------- The following are the tenants---->"
    puts "-------------------------------------------------------------------------------------"

    some_tenants.each do |tenant|
    puts tenant.name
    end


    puts "\n\n\n"
end

#---------------------------------------------------------


def option1(apartments)
    puts "-------------------------------------------------------------------------------------"
  apartments.each do |apartment|
    puts "Apartment ID: #{apartment.id} - \t Address: #{apartment.address} - \t Monthly Rent: #{apartment.monthly_rent} - \t Square Feet: #{apartment.square_feet}"
  end
end
#---------------------------------------------------------
def option2(tenants)

  tenants.each do |tenant|
    puts "Tenant ID: #{tenant.id} - \t\t name: #{tenant.name} - \t\t Age: #{tenant.age} - \t\t apartment ID: #{tenant.apartment_id}"
  end
end
#---------------------------------------------------------
def option3 (apartments, tenants)
  apartments.each do |apartment|
    print_aparments_with_tenants(apartment, tenants)
  end
end
#---------------------------------------------------------
def option4 (namex, tenants, apartments)

  tenant  = tenants.find{|tenant| tenant.name == namex}



  while tenant.class ==NilClass
      puts "The name you entered doesn't match the records, input the name again"
      namex = gets.chomp
      tenant  = tenants.find{|tenant| tenant.name == namex}
  end

  apartment= apartments.find { |apartment|  apartment.id==tenant.apartment_id}
  puts "\n"+tenant.name + " lives at:-->  "+apartment.address

end # end of option  4

#---------------------------------------------------------


def option5(tenants, namex)
  tenant  = tenants.find{|tenant| tenant.name == namex}



  while tenant.class ==NilClass
      puts "The name you entered doesn't match the records, input the name again"
      namex = gets.chomp
      tenant  = tenants.find{|tenant| tenant.name == namex}
  end

  tenants.delete(tenant)
  puts "Your tenant #{tenant.name}  was removed from you tenants list, check option 2 on the menu to see the changes"
end

#move one tenant from one apartment to another
def option6(namex, tenants)
    tenant  = tenants.find{|tenant| tenant.name == namex}
    while tenant.class ==NilClass
        puts "The name you entered doesn't match the records, input the name again"
        namex = gets.chomp
        tenant  = tenants.find{|tenant| tenant.name == namex}
    end

  puts " you current apartment ID is : #{tenant.apartment_id}, enter a new apartment ID for you to move in"
  tenant.apartment_id = gets.chomp.to_i
  puts "The current apartment id has been changed to: #{tenant.apartment_id}, check option 2 on the menu to see the change "
end#endf of option 6


def option7(apartments)
puts "Enter the address of the new apartment"
a = gets.chomp
puts "Enter the monthy rent"
b = gets.chomp.to_i
puts "Enter the square feet"
c = gets.chomp.to_i

apartments << Apartment.new(apartments.length+1, a, b, c)

puts "----->Your apartment has been added"
end

def option8(tenants)
puts "Enter the tenant name"
a = gets.chomp
puts "Enter the tenant's age"
b = gets.chomp
puts "Enter the tenants new apartment ID"
c = gets.chomp

  tenants << Tenant.new(tenants.length, a, b, c)
puts "---->The new tenant has been added to the list"
end




#---------------------------------------------------------


def menu()
  puts "1. View all Apartments"
  puts "2. View all the tenants"
  puts "3. View all the apartments with their tenants"
  puts "4. View a tenant based on name location"
  puts "5. Remove a tenant from an apartment"
  puts "6. Add a tenant to an apartment from its current apartment"
  puts "7. Create a new apartment "
  puts "8. Create a new tenant"
  puts "9. EXIT"
  puts "--------------------------------------------"
end

puts "Enter an option from 1 to 8\n"
menu()
input = gets.chomp.to_i
while input != 9

      if (input>0 && input<9)
          if(input==1)
            option1(ruby_apartments)
            puts "--------------------------------------------"
          elsif(input==2)
            option2(ruby_tenants)
            puts "--------------------------------------------"
          elsif(input==3)
            option3(ruby_apartments, ruby_tenants)
            puts "--------------------------------------------"
          elsif(input==4)
            puts "enter the name of the tenant that you want to get their location"
            namex = gets.chomp
            option4(namex, ruby_tenants, ruby_apartments)
            puts "--------------------------------------------"
          elsif(input==5)
            puts "enter the name of the tenant that you want to remove"
            namex = gets.chomp
            option5(ruby_tenants, namex)
            puts "--------------------------------------------"
          elsif(input==6)
            puts "enter the name of the current tenant to be moved to a different apartment"
            namex = gets.chomp
            option6(namex, ruby_tenants)
            puts "--------------------------------------------"
          elsif(input==7)
            option7(ruby_apartments)
            puts "--------------------------------------------"
          else
            option8(ruby_tenants)
            puts "--------------------------------------------"
          end

      else
        puts "invalid answer try again, and choose one of the following"
      end
      menu()
      input = gets.chomp.to_i
end

puts "bye bye"
