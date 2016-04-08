require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]
# puts apartments.inspect

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # apartments(id, address, monthly_rent, square_feet)
  # tenants(id, name, age, apartment_id)

  # What are the properties for each of the two types of hashes


# Use enumerables to -
  # Print all the addresses for the apartments
  # apartment_addresses = apartments.each { |apartment| puts apartment[:addresses]}
  # puts apartment_addresses

  # Print all the names for tenants
  # all_tenant_names = tenants.each {|tenant| puts tenant[:name]}

  # Print only apartments that are less then 700 in rent
  # less_than_700 = apartments.select {|apartment| apartment[:monthly_rent] < 700}
  # puts less_than_700

  # Print only tenants that are over the age of 44
  # tenants_over_44 = tenants.select {|tenant| tenant[:age] > 44}
  # puts tenants_over_44

  # Print only tenants that have an apartment id of 1
  # apartment_id_1 = tenants.select {|tenant| tenant[:id] = 1}
  # puts apartment_id_1

  # Print all the tenants in order from youngest to oldest
# youngest_to_oldest = tenants.sort_by {|tenant| tenant[:age]}
# puts youngest_to_oldest

  # Print the names of all the tenants alphabetically
  # tenants_alpha = tenants.sort_by! {|tenant| tenant[:name]}
  # puts tenants_alpha

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants

# ********************************************************************


# input variables


# get user option value
# class UserOption
#   option = nil

  # def pickOption (option1, option2)
      puts "To view a list of all the apartments, type 'option1'
      To view a list of all the tenants type 'option2'
      To view a list of tenants in each apartment type 'option3'"
      option = gets.chomp

      while option != "option1" || "option2" || 'option3' do
      puts "To view a list of all the apartments, type 'option1'
            To view a list of all the tenants type 'option2'
            To view a list of tenants in each apartment type 'option3'"
        option = gets.chomp
    end


  # def option1
    if option == "option1"
      list_of_apartments = apartments.each do |apartment| apartment
        puts list_of_apartments
  end

  # def option2
  elsif option == "option2"
      list_of_tenants = tenants.each do |tenant|
        puts tenant[:name]
  end

# def option3
elsif option == "option3"
  tenants_in_each_apartment = apartment.each do |apartment| apartment[:id]
    puts
end
