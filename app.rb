require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]



data[:apartments].each do |apartment|
   puts apartment[:address]
end

data[:tenants].each do |person|
   puts person[:name]
end

data[:apartments].each do |apartment|
   if apartment[:monthly_rent] < 700
   puts apartment
 end
end

data[:tenants].each do |person|
   if person[:age] > 44
   puts person
 end
end

data[:tenants].each do |person|
   if person[:id] == 1
   puts person
 end
end

agedTenants = data[:tenants].sort{|a,b| a['age']<=>b['age']}
agedTenants.each  do |person|
  puts person
end

alphaNames = data[:tenants].sort{|a,b| a['name']<=>b['name']}
alphaNames.each  do |name|
  puts name[:name]
end


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
