require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]
require_relative "models/apartment"
require_relative "models/tenant"
ruby_apartments = []
ruby_tenants = []


apartments.each do |apartment|
  new_apartment = Apartment.new(apartment[:id], apartment[:address], apartment[:monthly_rent], apartment[:square_feet])
  ruby_apartments << new_apartment
end

# p ruby_apartments

ruby_tenants = tenants.map do |tenant|
  Tenant.new(tenant[:id], tenant[:name], tenant[:age], tenant[:apartment_id])
end




# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes

# Use enumerables to -
  # Print all the addresses for the apartments

puts "Please enter a number to access different parts of your program \n
      Enter 1 to see all of your apartments...\n
      Enter 2 to see all of your tenants...\n
      Enter 3 to see all of your apartments smaller than 700 sq. feet\n
      Enter 4 to see all tenants older than 44\n"
input = gets.chomp
  if input == "1"
    ruby_apartments.each do |apt|
      p apt.address
    end
  elsif input == "2"
    ruby_tenants.each do |tenant|
      p tenant.name
    end
  elsif input == "3"
    ruby_apartments.each do |apt|
      if apt.square_feet < 700
        p apt
      end
    end
  elsif input == "4"
    ruby_tenants.each do |tenant|
      if tenant.age > 44
        p tenant
      end
    end
  # elsif input == "5"
  #   ruby_tenants do |tenant|
  #     sortedYToO = tenants.sort_by { |tenant| tenant[:age] }
  #     p sortedYToO
  #   end
end


  # Print only apartments that are less then 700 in rent
# smallApts = apartments.each do |apt|
#   if apt[:square_feet] < 700
#     puts apt
#     apt
#   end
# end

  # Print only tenants that are over the age of 44
# oldTenants = tenants.each do |tenant|
#   if tenant[:age] > 44
#     puts tenant
#    tenant
#   end
# end

  # Print only tenants that have an apartment id of 1
# idOf1 = tenants.each do |tenant|
#   if tenant[:id] == 1
#     puts tenant
#     tenant
#   end
# end

  # Print all the tenants in order from youngest to oldest
  # sortedYToO = tenants.sort_by { |tenant| tenant[:age] }
  # puts sortedYToO


  # Print the names of all the tenants alphabetically
  # sortedByName = tenants.sort_by { |tenant| tenant[:name]}
  # puts sortedByName

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants
