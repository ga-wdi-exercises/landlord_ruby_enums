require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
apartments = data[:apartments]
tenants = data[:tenants]


## created an instance of the classes
ruby_apartments = apartments.each do |apartment|
  Apartment.new(apartment[:id], apartment[:address],apartment[:monthly_rent], apartment[:square_feet])
end

ruby_tenants = tenants.each do |tenant|
  Tenant.new(tenant[:id], tenant[:name], tenant[:age], tenant[:apartment_id])
end
# ruby_tenants_in_objects =[]
# ruby_tenants.each do |tenant|
#   ruby_tenants_in_objects << OpenStruct.new(:id => tenant[:id],:name => tenant[:name],:age => tenant[:age],:apartment_id => tenant[:apartment_id])
# end
# puts ruby_tenants_in_objects
# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  ## The data is structured in apartments to a specific address, monthly_rent, and square_feet so in all the specifics of the actual apartment and the tenants describe their name, age, and apartment_id which are more specific to them.
  ## In short apartments describes the apartment's properties and tenants describe the tenant's properties
  # What are the properties for each of the two types of hashes
  ## apartment: id, address, monthly_rent, square_feet
  ## tenants: id, name, age, apartment_id

# Use enumerables to -
  # Print all the addresses for the apartments
    # ruby_apartments.each {|apartment| puts apartment[:address]}
  # Print all the names for tenants
    # ruby_tenants.each {|tenant| puts tenant[:name]}
  # Print only apartments that are less then 700 in rent
    # less_than_700 = ruby_apartments.select do |apartment|
      # apartment[:monthly_rent] < 700
    # end
    # puts less_than_700
  # Print only tenants that have an apartment id of 1
    # apt_id_1 = ruby_tenants.select do |tenant|
      # tenant[:apartment_id] ==1
    # end
    # puts apt_id_1
  # Print all the tenants in order from youngest to oldest
    # puts young_to_old = ruby_tenants.sort_by{|tenant| tenant[:age] }
  # Print the names of all the tenants alphabetically
    # puts alphabetical_name = ruby_tenants.sort_by{|tenant| tenant[:name]}

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
    # ruby_tenants.each do |tenant|
    #   ruby_apartments.each do |apartment|
    #     if tenant[:apartment_id] == apartment[:id]
    #      puts "#{tenant[:name]} #{apartment[:address]}"
    #     end
    #   end
    # end
  # When printing all apartments, under each apartment print all of its tenants
    # ruby_apartments.each do |apartment|
    #     house_tenants = ruby_tenants.select{|tenant| tenant[:apartment_id] == apartment[:id]}
    #   puts apartment
    #   puts house_tenants
    # end


## Part 2: building the APP
# gets input to choose which path to take
puts "Different Programs of App: Type [1] to view apartments [2] to view tenants."
input = gets.strip
# runs to
while input != "exit"
  if input == "1"
    puts "Here is a list of currently owned properties."
  ruby_apartments.each {|apartment| puts apartment[:address]}
elsif input == "2"
  puts "Here is a list of current tenants."
  ruby_tenants.each {|tenant| puts tenant[:name]}
  end
  break if input == 1 || 2
end

## did not do silve or gold yet.
