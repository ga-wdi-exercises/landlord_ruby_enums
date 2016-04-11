require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
tenant_list = []
apartment_list = []

apartments = data[:apartments]
tenants = data[:tenants]

apartment_list = apartments.map do |apartment|
  Apartment.new(apartment[:id], apartment[:address], apartment[:monthly_rent], apartment[:square_feet])
end

tenant_list = tenants.map do |tenant|
  Tenant.new(tenant[:id], tenant[:name], tenant[:age], tenant[:apartment_id])
end

puts "Hello Bob. How are you today?"
while gets.chomp != "fine"
  puts "Just tell me what I want to hear."
end
puts "Glad you decided to play ball. Your usual menu: \n
Type 1 to overview all the apartments, type 2 to overview the tenants.\n
Type 3 to view all the apartments with their tenants. Or if you're looking\n
for a specific tenant, just type in their name."

user_input = gets.chomp
tenantLookup = tenant_list.find {|t| t.name == user_input }

case user_input
when "1"
  puts apartments
when "2"
  puts tenants
when "3"
   address_book(tenants, apartments)
else tenantLookup
  address_lookup = apartment_list.find {|apartment| apartment.id == tenantLookup.apartment_id}
  puts address_lookup.address
end

puts "Anything else I can help you with?"
