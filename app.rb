require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
# Explain how the data is structured
# What are the properties for each of the two types of hashes

# --> The apartments hash contains keys and values identifying an apartment by an id, address, monthly rent, and the size of the apartment -- the apartments are objects.

# --> The tenants hash contains information that identifys a tenant by name, record id, age, and apartment assignment -- the tenants are the objects.


# Use enumerables to -
# Print all the addresses for the apartments
  # apartments.each {|apartment| puts apartment[:address]}

# Print all the names for tenants
  # tenants.each {|tenant| puts tenant[:name]}

# Print only apartments that are less then 700 in rent
  # cheapapartment = apartments.select {|apartment|  apartment[:monthly_rent] < 700}
  #   puts cheapapartment


# Print only tenants that are over the age of 44
  # olderresidents = tenants.select {|tenant| tenant[:age] > 44}
  #   puts olderresidents

# Print only tenants that have an apartment id of 1
  # apartmentid = tenants.select {|tenant| tenant[:apartment_id] == 1}
  #   puts apartmentid

# Print all the tenants in order from youngest to oldest
  # numorder = tenants.sort_by {|tenant| tenant[:age]}
  #   puts numorder

# Print the names of all the tenants alphabetically
  # alphaorder = tenants.sort_by {|tenant| tenant[:name]}
  #   puts alphaorder


# More challenging
# When printing tenants also print out the address that the tenant resides in.
  # tenants.each do |tenant|
  #   puts tenant[:name]
  #   apartment = apartments.find {|apartment| tenant[:apartment_id] == apartment[:id]}
  #   puts apartment[:address]
  # end

# When printing all apartments, under each apartment print all of its tenants
  # apartments.each do |apartment|
  #   puts apartment[:address]
  #   tenant = tenants.select {|tenant| tenant[:apartment_id] == apartment[:id]}
  #   tenant.each do |tenant|
  #     puts tenant[:name]
  #   end
  # end

# MVP
puts "Buffering..\n
-------------------------------\n
Apartment Management Application\n
-------------------------------\n
Select one of the following options:\n
1 -> View All Apartments\n
2 -> View All Tenants\n
3 -> View All Occupied Apartments\n
4 -> View Occupied Apartments Based on Tenant Name\n
5 -> Remove A Tenant\n
6 -> Add A Tenant to Apartment\n
7 -> New Apartment\n
8 -> Create New Tenant\n"

user_input = gets.chomp.to_i

puts "You have selected option: #{user_input}"

if user_input == 1

  apartments.each {|apartment| puts apartment}

elsif user_input == 2

  tenants.each {|tenant| puts tenant}

elsif user_input== 3

  apartments.each do |apartment|
    puts apartment[:address]
    tenant = tenants.select {|tenant| tenant[:apartment_id] == apartment[:id]}
    tenant.each do |tenant|
      puts tenant[:name]
    end
  end

elsif user_input == 4

  tenants.each do |tenant|
    puts "#{tenant[:name]} Occupies Apartment: "
    apartment = apartments.find {|apartment| tenant[:apartment_id] == apartment[:id]}
    puts apartment[:address]
  end

elsif user_input == 5
  # I need to write a function that removes a tenant association or tenant from system?

  def method_name

  end

elsif user_input == 6
  # I need to write a function that adds a tenant association to an apartment

  def method_name

  end

elsif user_input == 7
  # I need to write a function that creates a new apartment and pushes it into the existing hash structure.
  def ()
    {:id=>,
      :address=>,
      :monthly_rent=>,
      :square_feet=>},

    end




  else user_input == 8
    # I need to write a function that creates a new apartment and pushes it into the exisitng hash

    def()
      {:id=>,
        :name=>,
        :age=>,
        :apartment_id=>},
      end

    end
  end
end
