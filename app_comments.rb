require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
#   Explain how the data is structured
#   - the data is sorted into two large arrays that consist of hashes
#   - the first is an apartments array consisting of hashes with 4 key values
#   - the second is a tenant array that consists of object also with 4 key values
#   - these two arrays are returned in a large hash holder represented by calling the defined data
#   What are the properties for each of the two types of hashes?
#   - Apartments Array: id-address-rent-sqft
#   - Tenants Array - id-name-age-apartmentid

apartments.each {|unit| puts unit[:address]}

tenants.each{|tenant| puts tenant[:name]}

apartments.each do |unit|
    if unit[:monthly_rent] < 700
        puts unit
    end
end

tenants.each do |tenant|
    if tenant[:age]>44
        puts tenant
    end
end

puts tenants.select {|tenant| tenant[:apartment_id]==1}
puts tenants.sort_by {|tenant| tenant[:age]}
puts tenants.sort_by {|tenant| tenant[:name]}

# When printing tenants also print out the address that the tenant resides in.
tenants.each do |tenant|
    puts tenant[:name]
    match = apartments.select{|apartment| apartment[:id] == tenant[:apartment_id]}
    puts match[0][:address]
end
# When printing all apartments, under each apartment print all of its tenants
apartments.each do |apartment|
    puts apartment[:address]
    match = tenants.select{|tenant| tenant[:apartment_id] == apartment[:id]}
    match.each{|match| puts match[:name]}
end



####important block
## type tenant name get apartment 2
## I should be allowed to remove a tenant from an apartment so that I can track evictions/lease ends
## I should be allowed to add a tenant to an apartment so that I can track occupancy.
## I should be allowed to create a new apartment so that I can track new properties in my books
## I should be allowed to create a new tenant so that I can track new tenants in my books.
