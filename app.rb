require "pry"
require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
apartments = data[:apartments]
tenants = data[:tenants]
ruby_apartments = []
ruby_tenants = []

apartments.each do |apartment|
  create_apartment = Apartment.new(apartment[:id],apartment[:address],apartment[:monthly_rent],apartment[:square_feet])
  ruby_apartments << create_apartment
end

tenants.each do |tenant|
  create_tenant = Tenant.new(tenant[:id],tenant[:name],tenant[:age],tenant[:apartment_id])
  ruby_tenants << create_tenant
end

binding.pry

# First, Open the data.rb and inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
    #The data is stored in a method that creates a hash. "apartments" and "tenants" are arrays containing the respective information.
    #The method then returns a hash with the symbols :apartments and :tenants, which store the values "apartments" and "tenants".
  # What are the properties for each of the two types of hashes
    #

# Use enumerables to -
  # Print all the addresses for the apartments
    # apartments.each do |apartment|
    #   puts apartment[:address]
    # end
  # Print all the names for tenants
    # tenants.each do |tenant|
    #   puts tenants[:name]
    # end
  # Print only apartments that are less than 700 in rent
    # less_than_700 = apartments.select do |apartment|
    #    apartment[:monthly_rent] <700
    # end
    # puts less_than_700
  # Print only tenants that are over the age of 44
    # over_44 = tenants.select do |tenant|
    #   tenant[:age] > 44
    # end
    # puts over_44
  # Print only tenants that have an apartment id of 1
    # id_1 = tenants.select do |tenant|
    #   tenant[:apartment_id] == 1
    # end
    # puts id_1
  # Print all the tenants in order from youngest to oldest
    # young_to_old = tenants.sort_by do |tenant|
    #   tenant[:age]
    # end
    # puts young_to_old
  # Print the names of all the tenants alphabetically
    # a_to_z = tenants.sort_by do |tenant|
    #   tenant[:name]
    # end
    # puts a_to_z
  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
    # tenants.each do |tenant|
    #   apartments.each do |apartment|
    #     if tenant[:apartment_id] == apartment[:id]
    #       puts tenant
    #       puts apartment
    #     end
    #   end
    # end
  # When printing all apartments, under each apartment print all of its tenants
    # apartments.each do |apartment|
    #   all_tenants = tenants.select do |tenant|
    #     tenant[:apartment_id] == apartment[:id]
    #   end
    #   puts apartment
    #   puts all_tenants
    # end

selection = nil

while selection != 0
  puts "*****************************
1: View all apartments
2: View all tenants
3: View all apartments with their tenants
4: Find tenant's address
0: Exit the program"

  selection = gets.chomp.to_i

  if selection == 1
    puts apartments
  end

  if selection == 2
    puts tenants
  end

  if selection == 3
    apartments.each do |apartment|
      all_tenants = tenants.select do |tenant|
        tenant[:apartment_id] == apartment[:id]
      end
      puts apartment
      puts all_tenants
    end
  end

  if selection == 4
    puts "Enter name of tenant."
    tenant_name = gets.chomp
    find_tenant = tenants.find do |tenant|
      tenant_name == tenant[:name]
    end
    find_address = apartments.find do |apartment|
      find_tenant[:apartment_id] == apartment[:id]
    end
    puts find_address[:address]
  end

end
