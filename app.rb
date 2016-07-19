require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes

# Use enumerables to -
  # Print all the addresses for the apartments
  # Print all the names for tenants
  # Print only apartments that are less then 700 in rent
  # Print only tenants that are over the age of 44
  # Print only tenants that have an apartment id of 1
  # Print all the tenants in order from youngest to oldest
  # Print the names of all the tenants alphabetically

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants

# apartments.each do |address|
#   puts address[:address]
# end

# tenants.each do |tenants|
#   puts tenants[:name]
# end

# apartments.each do |address|
#   if address[:monthly_rent] < 700
#     puts address
#   end
# end

# tenants.each do |tenant|
#   if tenant[:age] > 44
#     puts tenant
#   end
# end

# id1 = tenants.select {|tenant| tenant[:apartment_id]==1}
# puts id1

# age_sort = tenants.sort_by do |tenant|
#   tenant[:age]
# end
# puts age_sort

# here's where i did the challenge bit

name_sort = tenants.sort_by do |tenant|
  tenant[:name]
end

name_sort.each do |tenant|
    puts tenant[:name]
    apartment_id = tenant[:apartment_id]
    app = apartments.select{|apartment| apartment[:id]==apartment_id}
    app.each do |address|
      printAdd = address[:address]
      puts printAdd
    end

end
