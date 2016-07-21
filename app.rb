require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
apartments = data[:apartments]
tenants = data[:tenants]

ruby_apartments = []
ruby_tenants = []

ruby_apartments = apartments.each do |apt|
  Apartment.new(apt[:id], apt[:address], apt[:monthly_rent], apt[:square_feet])
end

ruby_tenants = tenants.each do |tenant|
  Tenant.new(tenant[:id], tenant[:name], tenant[:age], tenant[:apartment_id])
end


####### PART 1 enumerables version
# Use enumerables to -
# Print all the addresses for the apartments
# apartments.each do |apts|
#   puts apts[:address]
# end
####### PART 2 OOP version
# ruby_apartments.each do |apt|
#   puts apt[:address]
# end
####### PART 1 enumerables version
# Print all the names for tenants
# tenants.each do |fam|
#   puts fam[:name]
# end
####### PART 2 OOP version
# ruby_tenants.each do |tenant|
#   puts tenant[:name]
# end
####### PART 1 enumerables version
# Print only apartments that are less then 700 in rent
# puts apartments.select {|apts| apts[:monthly_rent] < 700}
####### PART 2 OOP version
# ruby_apartments.each do |apt|
#   if apt[:monthly_rent] < 700
#     puts apt
#   end
# end
####### PART 1 enumerables version
# Print only tenants that are over the age of 44
# puts tenants.select {|fam| fam[:age] > 44}
####### PART 2 OOP version
# ruby_tenants.each do |tenant|
#   if tenant[:age] > 44
#     puts tenant
#   end
# end
####### PART 1 enumerables version
# Print only tenants that have an apartment id of 1
# puts tenants.select {|fam| fam[:apartment_id] == 1}
####### PART 2 OOP version
# ruby_tenants.each do |tenant|
#   if tenant[:apartment_id] == 1
#     puts tenant
#   end
# end
####### PART 1 enumerables version
# Print all the tenants in order from youngest to oldest
# puts tenants.sort_by {|fam| fam[:age]}
####### PART 2 OOP version
# ruby_tenants.sort_by! do |tenant|
#   tenant[:age]
# end
# puts tenants
####### PART 1 enumerables version
# Print the names of all the tenants alphabetically
# puts tenants.sort_by {|fam| fam[:name]}
####### PART 2 OOP version
# ruby_tenants.sort_by! do |tenant|
#   tenant[:name]
# end
# puts tenants


######### the actual numbered app part:

#method to get input
def read_input prompt
  puts prompt
  gets.chomp
end

answer = read_input("Hey Bob. To view all your apartments, type '1'. To view all your tenants, type '2'.")
if answer == '1'
  ruby_apartments.each do |apt|
    puts apt[:address]
  end
elsif answer == '2'
  ruby_tenants.each do |tenant|
    puts tenant[:name]
  end
else
  puts "Come on Bob, what else do you expect from me. I'm a computer."
end



## More challenging
# When printing tenants also print out the address that the tenant resides in.
# When printing all apartments, under each apartment print all of its tenants
