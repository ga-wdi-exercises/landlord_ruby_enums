require 'pry'

# Includes
require_relative "models/apartment"
require_relative "models/tenant"
require_relative "data"

# Global Variables
apartments = data[:apartments]
tenants = data[:tenants]
ruby_apartments = []
ruby_tenants = []

# Set up ruby class data
ruby_apartments = apartments.map { |a| Apartment.new a }
ruby_tenants = tenants.map { |t| Tenant.new t }



# Print apartment list
def apartments_list apartments
	apartments.each_with_index do |a, i|
		puts "\n##{i + 1}: #{a.apartment[:address]}"
	end

end

# Print apartment details
def apartments_detail apartments, tenants
	apartments.each_with_index do |a, i|
		t = tenants.select { |t| t.tenant[:apartment_id] == a.apartment[:id] }
		puts "\n##{i + 1}: #{a.apartment[:address]}\nRent: $#{a.apartment[:monthly_rent]}\nSize: #{a.apartment[:square_feet]}\nTenants:"
		t.each { |t| puts " - #{t.tenant[:name]}" }
	end

end

# Apartment options prompt
def apartment_options_prompt
	puts "\n=== Apartment Sub-Menu ==="
	puts "Enter [1] for apartment list"
	puts "Enter [2] for apartment details"
	print ">>> "
end

# Apartment options
def apartment_options apartments, tenants
	apartment_options_prompt
	input = gets.chomp

	# Process input
	if input == '1'
		apartments_list apartments
	elsif input == '2'
		apartments_detail apartments, tenants
	end
end



# Print tenant list
def tenants_list tenants
	tenants.each_with_index do |t, i|
		puts "\n##{i + 1}: #{t.tenant[:name]}"
	end
end

# Print tenant details
def tenants_detail apartments, tenants
	tenants.each_with_index do |t, i|
		a = apartments.select { |a| a.apartment[:id] == t.tenant[:apartment_id] }
		puts "\n##{i + 1}: #{t.tenant[:name]}\nAge: #{t.tenant[:age]}\nAddress: #{a[0].apartment[:address]}"
	end
end

# Tenant lookup
def tenant_lookup apartments, tenants
	puts "\nEnter tenant's name"
	print ">>> "
	name = gets.chomp
	name = tenants.select { |t| t.tenant[:name].downcase == name.downcase }
	a = apartments.select { |a| a.apartment[:id] == name[0].tenant[:apartment_id] }
	puts a[0].apartment[:address]
end

# Tenant options prompt
def tenant_options_prompt
	puts "\n=== Tenant Sub-Menu ==="
	puts "Enter [1] for tenant list"
	puts "Enter [2] for tenant details"
	puts "Enter [3] to look up a tenant's address"
	print ">>> "
end

# Tenant options
def tenant_options apartments, tenants
	tenant_options_prompt
	input = gets.chomp

	# Process input
	if input == '1'
		tenants_list tenants
	elsif input == '2'
		tenants_detail apartments, tenants
	elsif input == '3'
		tenant_lookup apartments, tenants
	end
end



# Main Menu prompt
def main_prompt
	puts "\n=== Landlord Main Menu ==="
	puts "Enter [1] for apartments"
	puts "Enter [2] for tenants"
	print ">>> "
end

# Begin Program
def start_program apartments, tenants
	main_prompt
	input = gets.chomp

	# Process input
	if input == '1'
		apartment_options apartments, tenants
	elsif input == '2'
		tenant_options apartments, tenants
	end
end


# Object data
# start_program apartments, tenants

# Ruby class data
start_program ruby_apartments, ruby_tenants



# binding.pry
# puts 'done'
