##################################
# 201702081919L  EL MIERCOLES   JAY
# https://github.com/ga-wdi-exercises/landlord_ruby_no_AR
##################################
#
# Part 1 - Practice With Enumerables Read the comments in app.rb to follow the directions practicing enumerables Store the enumerable methods into variables and use puts to verify the results of your methods.
# Part 2 - Build the App
# Comment out any functional code in app.rb, but save it, you can leverage the code from Part 1 to write out parts of this application.
# Bob Pizza is old school and he wants a sick command line interface for this app. Below are Bob's user stories. It is essential that he implement the MVP user stories. The Silver and Gold user stories are considered to be bonuses.
#
# MVP
# - I should have a numbered interface for my application so that I can just type in a number to access different parts of my program.
# - I should be allowed an option to view all the apartments so that I can get an overview of my properties.
# - I should be allowed an option view all the tenants so that I can get an overview of my tenants

# Silver
# - I should be allowed an option to view all the apartments with their tenants so that I can get an overview of Occupancy.
# - I should be able to find where a tenant lives based on tenant name in case of emergencies.

# Gold
# - I should be allowed to remove a tenant from an apartment so that I can track evictions/lease ends
# - I should be allowed to add a tenant to an apartment so that I can track occupancy.
# - I should be allowed to create a new apartment so that I can track new properties in my books
# - I should be allowed to create a new tenant so that I can track new tenants in my books.
# ##################################

require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
apartments = data[:apartments]
tenants = data[:tenants]
apartments_class = []
tenants_class = []

apartments.each do |apartment|
  create_apartment = Apartment.new(apartment[:id],apartment[:address],apartment[:monthly_rent],apartment[:square_feet])
  apartments_class << create_apartment
end

tenants.each do |tenant|
  create_tenant = Tenant.new(tenant[:id],tenant[:name],tenant[:age],tenant[:apartment_id])
  tenants_class << create_tenant
end

selection = nil
while selection != 0
  puts ''
  puts ''
  puts "*****************************
1: Show me all the apartments
2: Introduce me to all the tenants
3: Show me which tenants live in each apartment
4: Show me 'i know where you live' stalker-y address for a given tenant
0: You still here?  Exit the program"

  selection = gets.chomp.to_i

  if selection == 1
              # Print all the addresses for the apartments
    puts ''
    apartments.each do |apartment|
              # puts apartment                    # {:id=>19, :address=>"72108 Leuschke Greens", :monthly_rent=>661, :square_feet=>967} # {:id=>20, :address=>"4705 Rosenbaum Ville", :monthly_rent=>993, :square_feet=>1168} #   Wed Feb 08 11:50:12 ~/wdi/homework/due_201702090900L/landlord_ruby_no_AR (master *)
              # puts "apartments_address: #{apartment[:address]}"  # [22] pry(main)*   puts "unit Addr: #{apt[:address]}" [22] pry(main)* end unit Addr: 9841 Tanner Key unit Addr: 6971 Corwin Locks
      p    "apartment_address:   #{apartment[:address]}"
    end
  end

              # Print all the names for tenants
  if selection == 2
    puts ''
    tenants.each do |tenant|
      puts "tenant_name:   #{tenant[:name]}}"  # THIS WORKS THANKS TO WILL
    end
  end

              # 201702121055L   EL DOMINGO   JAY
              # PRINT ALL THE NAMES FOR TENANTS IN A GIVEN APARTMENT
              # When printing all apartments, under each apartment print all of its tenants
  if selection == 3
      apartments_class.each do |apartment|
        puts "Apartment: " + apartment.id.to_s
        all_tenants = tenants_class.select do |tenant|
          if (tenant.apartment_id == apartment.id)
            puts "   Tenant who lives in this apartment: " + tenant.name
          end
        end
      end
  end

  if selection == 4
    puts "What\'s yer tenant\'s name"
    puts ''
    puts ''
    tenant_name = gets.chomp
    find_tenant = tenants_class.find do |tenant|
      tenant_name == tenant.name                # VAR FOR THE INPUT TENANTS NAME
    end
    find_address = apartments_class.find do |apartment|
      find_tenant.apartment_id == apartment.id  # SHOW THE ADDR FOR A GIVEN TENANT NAME
    end
    puts find_address.address
  end
end                    # END WHILE LOOP
