require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

puts "hello world"
puts ""

  # Print all the addresses for the apartments
addresses = apartments.map{ |apartment| apartment[:address] }
# puts addresses

# Print all the names for tenants
tenant_name = tenants.map { |tenant| tenant[:name]}
# puts tenant_name

# Print only apartments that are less then 700 in rent
less_than_700 = apartments.select{ |apartment| apartment[:monthly_rent] < 700 }
# puts less_than_700

# Print only tenants that are over the age of 44
old_tenants = tenants.select { |tenant| tenant[:age] > 44}
# puts old_tenants

# Print only tenants that have an apartment id of 1
tenant_1 = tenants.select { |tenant| tenant[:apartment_id] == 1 }
# puts tenant_1

# Print all the tenants in order from youngest to oldest
young_to_old = tenants.sort_by { |tenant| tenant[:age]}
# puts young_to_old

# Print the names of all the tenants alphabetically
alphabetical = tenants.sort_by { |tenant| tenant[:name]}
# puts alphabetical

# When printing tenants also print out the address that the tenant resides in.
tenants.each do |tenant|
   apartment = apartments.find {|apartment| tenant[:apartment_id] == apartment[:id]}
    puts tenant[:name]
    puts apartment[:address]
 end

 # When printing all apartments, under each apartment print all of its tenants
 apartments.each do |apartment|
    tenant = tenants.select {|tenant| tenant[:apartment_id] == apartment[:id]}
    tenant.each do |tenant|
    puts apartment[:address]
    puts tenant[:name]
    end
  end
