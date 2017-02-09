require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
apartments = data[:apartments]
tenants = data[:tenants]


## created an instance of the classes
ruby_apartments = apartments.each do |apartment|
  Apartment.new(apartment[:id], apartment[:address],apartment[:monthly_rent], apartment[:square_feet])
end
puts ruby_apartments

ruby_tenants = tenants.each do |tenant|
  Tenant.new(tenant[:id], tenant[:name], tenant[:age], tenant[:apartment_id])
end
puts ruby_tenants
# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  ## The data is structured in apartments to a specific address, monthly_rent, and square_feet so in all the specifics of the actual apartment and the tenants describe their name, age, and apartment_id which are more specific to them.
  ## In short apartments describes the apartment's properties and tenants describe the tenant's properties
  # What are the properties for each of the two types of hashes
  ## apartment: id, address, monthly_rent, square_feet
  ## tenants: id, name, age, apartment_id

# Use enumerables to -
  # Print all the addresses for the apartments
    # apartments.each {|apartment| puts apartment[:address]}
  # Print all the names for tenants
    # tenants.each {|tenant| puts tenant[:name]}
  # Print only apartments that are less then 700 in rent
    # less_than_700 = apartments.select do |apartment|
      # apartment[:monthly_rent] < 700
    # end
    # puts less_than_700
  # Print only tenants that have an apartment id of 1
    # apt_id_1 = tenants.select do |tenant|
      # tenant[:apartment_id] ==1
    # end
    # puts apt_id_1
  # Print all the tenants in order from youngest to oldest
    # puts young_to_old = tenants.sort_by{|tenant| tenant[:age] }
  # Print the names of all the tenants alphabetically
    # puts alphabetical_name = tenants.sort_by{|tenant| tenant[:name]}

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
    # tenants.each do |tenant|
    #   apartments.each do |apartment|
    #     if tenant[:apartment_id] == apartment[:id]
    #      puts "#{tenant[:name]} #{apartment[:address]}"
    #     end
    #   end
    # end
  # When printing all apartments, under each apartment print all of its tenants
    # apartments.each do |apartment|
    #     house_tenants = tenants.select{|tenant| tenant[:apartment_id] == apartment[:id]}
    #   puts apartment
    #   puts house_tenants
    # end


## Part 2: building the APP
# gets input to choose which path to take
puts "Different Programs of App: Type [1] to view apartments [2] to view tenants."
input = gets.strip.to_i
# runs to
while input != 1 || 2
  if input == 1
  apartments.each {|apartment| puts apartment[:address]}
  elsif input == 2
  tenants.each {|tenant| puts tenant[:name]}
  end
  break if input == 1 || 2
end

## did not do silve or gold yet.
