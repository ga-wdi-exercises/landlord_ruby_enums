require_relative "data"
require_relative "models/apartment"
require_relative "models/tenants"
apartments = data[:apartments]
tenants = data[:tenants]


#Instantiate instances of apartments and tenants using the class
#class Apartment
  #@@total_properties = 0
  #attr_accessor :id, :address, :monthly_rent, :square_feet
    #def initialize(id, address, rent, square_feet)
      #@id = id
      #@address = address
      #@monthly_rent = rent
      #@square_feet = square_feet
      #@@total_properties += 1
    #end
  #end
ruby_apartments = apartments.map do |apartment|
  Apartment.new(apartment[:id], apartment[:address], apartment[:monthly_rent], apartment[:square_feet])
end

#class Tenant
  #@@total_tenants = 0
  #attr_accessor :id, :name, :age, :apartment_id
    #def initialize(id, name, age, apartment_id)
      #@id = id
      #@name = name
      #@age = age
      #@apartment_id = apartment_id
    #  @@total_tenants += 1
    #end
  #end
ruby_tenants = tenants.map do |tenant|
  Tenant.new(tenant[:id], tenant[:name], tenant[:age], tenant[:apartment_id])
end







# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes

# Use enumerables to -
  # Print all the addresses for the apartments
    #addresses.each do |address|
      #puts ruby_apartments.address
    #end
  # Print all the names for tenants
    #ruby_tenants.each do |tenant|
      #ruby_tenants.name
    #end
  # Print only apartments that are less then 700 in rent
      # cheap_apartments = ruby_apartments.select do |apartment|
        # apartments.monthly_rent < 700
        #end
      #puts cheap_apartments

  # Print only tenants that are over the age of 44

    # tenants_older = ruby_tenants.select do |tenant|
        #tenant.age > 44
      #  end
      #puts tenants_older

  # Print only tenants that have an apartment id of 1

      #tenants_apartment_id_one = ruby_tenants.select do |tenant|
        #tenants.apartment_id = 1
      #end
      #puts tenants_apartment_id_one
# Print all the tenants in order from youngest to oldest

    #tenants_sorted_by_age = ruby_tenants.sort_by
      #do |tenant|
      #tenants.age
    #end




  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants

#MVP


  puts "Hello. This program will show you a list of options."
  system "clear"
  puts "What data set would you like to view? Put 1 for apartments or 2 for tenants. If you'd like to view tenants with their contact information, press 3."
  program_selection = gets.chomp
  if program_selection == "1"
    ruby_apartments.each do |apartment|
      puts apartment.address
    end
  elsif program_selection == "2"
    ruby_tenants.each do |tenant|
      puts tenant.name
    end
  elsif program_selection == "3"
    tenant_with_contact = tenants.each do |tenant|
      puts tenant.name
  end


  #  - I should be allowed an option to view all the apartments with their tenants so that I can get an overview of Occupancy.
