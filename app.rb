require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes

# Use enumerables to -
puts "Print all the addresses for the apartments".upcase
apartments.each do |apartment|
  puts apartment[:address]
end

puts '# ' * 20
puts ' '
puts "Print all the names for tenants".upcase
tenants.each do |tenant|
  puts tenant[:name]
end

puts '# ' * 20
puts ' '
puts "Print only apartments that are less then 700 in rent".upcase
rent_less_than_700 = apartments.select do |apartment|
  apartment[:monthly_rent] < 700
end
puts rent_less_than_700

puts '# ' * 20
puts ' '
puts "Print only tenants that are over the age of 44".upcase
tenants_over_44 = tenants.select do |tenant|
  tenant[:age] > 44
end
puts tenants_over_44

puts '# ' * 20
puts ' '
puts "Print only tenants that have an apartment id of 1".upcase
tenants_in_apt_1 = tenants.find_all { |tenant| tenant[:apartment_id] == 1 }
puts tenants_in_apt_1

puts '# ' * 20
puts ' '
puts "Print all the tenants in order from youngest to oldest".upcase
tenants_descending_by_age = tenants.sort_by { |tenant| tenant[:age] * -1 }
puts tenants_descending_by_age

puts '# ' * 20
puts ' '
puts "Print the names of all the tenants alphabetically".upcase
tenants_alphabetical = tenants.sort_by { |tenant| tenant[:name] }
puts tenants_alphabetical

## More challenging

puts '# ' * 20
puts ' '
puts "When printing tenants also print out the address that the tenant resides in.".upcase
tenants.each do |tenant|
  name = tenant[:name]
  tenant_apt_id = tenant[:apartment_id]
  apt = apartments.select { |apartment| apartment[:id] == tenant_apt_id }
  address = apt[0][:address] #note: apt is an array, so you must select the element you want to access the hash attributes
  puts "#{name.to_s} lives at #{address}."
end

puts '# ' * 20
puts ' '
puts "When printing all apartments, under each apartment print all of its tenants.".upcase
apartments.each do |apartment|
  apt_id = apartment[:id]
  tenants_in_apt = tenants.select { |tenant| tenant[:apartment_id] == apt_id }
  puts "Apartment #{apt_id.to_s}"
  puts tenants_in_apt
  puts ' '
end
