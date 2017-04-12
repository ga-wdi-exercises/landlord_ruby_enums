
require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
apartments = data[:apartments]
tenants = data[:tenants]
ruby_apartments = []
ruby_tenants = []

apartments.each do |apartment|
  new_apartment = Apartment.new(apartment[:id], apartment[:address], apartment[:monthly_rent], apartment[:square_feet])#these are the attributes specific to THIS INSTANCE of new_apartment.  i think you could probably also use self.
  ruby_apartments << new_apartment
end

tenants.each do |tenant|
  new_tenant = Tenant.new(tenant[:id], tenant[:name], tenant[:age], tenant[:apartment_id])
  ruby_tenants << new_tenant
end




puts "Hello, Mr. Pizza.  What would you like to do today?  Press 1 to see a list of your properties.  Press 2 to see a list of your tenants."

pizza_input = gets.chomp.to_i
if (pizza_input == 1)
  apartments.each do|apartment|
    puts apartment[:address]
    puts "Wonderful!  Look at all the buildings you own!"
  end
elsif (pizza_input == 2)
  tenants.each do |tenant|
    puts tenant[:name]
    puts "Splendid!  These are all the people who owe you money!"
  end
else
  puts "See you soon!"

end


# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:

  # Explain how the data is structured
    #the data is structured into two arrays.  one array for apartments, and one array for tenants.
    #each array is then comprised of many hashes.


  # What are the properties for each of the two types of hashes
    #properties for the apartment hashes:
      #id, address, monthly rent, square feet
    #properties for the tenant hashes:
      #id, name, age, apartment id

# # Use enumerables to -
#   # Print all the addresses for the apartments
      # ruby_apartments = apartments.each do |apartment|
      #   puts apartment[:address]
      # end
#
#   # Print all the names for tenants
      # ruby_tenants = tenants.each do |tenant|
      #   puts tenant[:name]
      # end
#
#   # Print only apartments that are less then 700 in rent
      # cheaper_apartments = apartments.each do |apartment|
      #   if(apartment[:monthly_rent] < 700)
      #   puts apartment[:id]
      # end
      # end



  # Print only tenants that are over the age of 44
    # middle_aged = tenants.each do |tenant|
    #   if(tenant[:age] > 44)
    #     puts tenant[:name]
    #   end
    # end



  # Print only tenants that have an apartment id of 1
    # apartment_one = tenants.each do |tenant|
    #   if(tenant[:apartment_id]== 1)
    #     puts tenant[:name]
    #   end
    # end


  # Print all the tenants in order from youngest to oldest
    # youngest_to_oldest = tenants.sort_by do |tenant|
    #     tenant[:age]
    # end
    #   puts youngest_to_oldest

  # Print the names of all the tenants alphabetically
    # alphabet_tenants = tenants.sort_by do |tenant|
    #   tenant[:name].downcase
    # end
    #   puts alphabet_tenants

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
    #   tenants.each do |tenant|
    #   puts tenant[:name]
    #     tenant_address = apartments.find{|apartment| apartment[:id] == tenant[:apartment_id]}
    #   puts tenant_address
    # end
    #you do it in this order, instead of setting the block equal to tenant_address, because you need to first have the list of tenant names in order...
    #...to match them to the addresses.


  # When printing all apartments, under each apartment print all of its tenants
    # apartments.each do |apartment|
    #   puts apartment[:address]
    #     occupant = tenants.find{|tenant| tenant[:apartment_id] == apartment[:id]}
    #   puts occupant
    # end
