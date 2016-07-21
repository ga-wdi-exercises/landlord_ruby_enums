require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
apartments = data[:apartments]
tenants = data[:tenants]
ruby_apartments = []
ruby_tenants = []


apartments.each do |apartment|
  newApartment = Apartment.new(apartment[:id], apartment[:address], apartment[:monthly_rent], apartment[:square_feet])
  ruby_apartments.push(newApartment)
end

tenants.each do |tenant|
  newTenant = Tenant.new(tenant[:id], tenant[:name], tenant[:age], tenant[:apartment_id])
  ruby_tenants.push(newTenant)
end

# Print all the addresses for the apartments
ruby_apartments.each do |apartment|
  puts apartment.address
end
# Print all the names for tenants
ruby_tenants.each do |tenant|
  puts tenant.name
end
# Print only apartments that are less then 700 in rent
ruby_apartments.each do |apartment|
  if apartment.monthly_rent < 700
    puts apartment
  end
end
# Print only tenants that are over the age of 44
ruby_tenants.each do |tenant|
  if tenant.age > 44
    puts tenant
  end
end
# Print only tenants that have an apartment id of 1
ruby_tenants.each do |tenant|
  if tenant.apartment_id == 1
    puts tenant
  end
end
# Print all the tenants in order from youngest to oldest
ruby_tenants.sort_by! do |tenant|
  tenant.age
end
puts tenants
# Print the names of all the tenants alphabetically
tenants.sort_by! do |tenant|
  tenant.name
end
puts tenants
