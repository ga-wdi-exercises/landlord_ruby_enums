require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
apartments = data[:apartments]
tenants = data[:tenants]

ruby_apartments = apartments.map do |a|
  Apartment.new a[:id], a[:address], a[:monthly_rent], a[:square_feet]
end

ruby_tenants = tenants.map do |t|
  Tenant.new t[:id], t[:name], t[:age], t[:apartment_id]
end

puts "Good day, Mr. Pizza. What would you like to do?"
puts "   1. List apartments"
puts "   2. List tenants"
puts
input = gets.chomp.to_i

if input == 1
  ruby_apartments.each{|a| p a}
elsif input == 2
  ruby_tenants.each{|t| p t}
end
