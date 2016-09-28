require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
	# Explain how the data is structured
		# The data is structured within a method
		# The returns two arrays of hashes, one for apartments and one for tenants

	# What are the properties for each of the two types of hashes
		# Apartments hashes have the properties: id, address, monthly_rent, square_feet
		# Tenant hashes have the properties: id, name, age, apartment_id

# Use enumerables to -
	# Print all the addresses for the apartments
	# apartments.each { |a| puts a[:address] }

	# Print all the names for tenants
	# tenants.each { |t| puts t[:name] }

	# Print only apartments that are less than 700 in rent
	def rent_under_700
		apartments.each do |a|
			if a[:monthly_rent] < 700
				puts a
			end
		end
	end

	# Print only tenants that are over the age of 44
	def under_44
		tenants.each do |t|
			if t[:age] > 44
				puts t
			end
		end
	end

	# Print only tenants that have an apartment id of 1
	def in_apartment_1
		tenants.each do |t|
			if t[:apartment_id] == 1
				puts t
			end
		end
	end

	# Print all the tenants in order from youngest to oldest
	def oldest_to_youngest
		puts tenants.sort { |a, b| a[:age] <=> b[:age] }
	end

	# Print the names of all the tenants alphabetically
	def a_to_z
		puts tenants.sort { |a, b| a[:name] <=> b[:name] }
	end

	## More challenging
	# When printing tenants also print out the address that the tenant resides in.
	def print_tenants tenants, apartments
		tenants.each do |t|
			a = apartments.select { |a| a[:id] == t[:apartment_id] }
			puts "#{t[:name]}, #{a[0][:address]}"
		end
	end


	# When printing all apartments, under each apartment print all of its tenants
	# def apartments_detail apartments, tenants
	# 	apartments.each do |a|
	# 		t = tenants.select { |t| t[:apartment_id] == a[:id] }
	# 		t_array = []
	# 		t.each { |t| t_array << t[:name]}
	# 		puts "#{a[:address]}, #{t_array}"
	# 	end
	# end



# Print apartment list
def apartments_list apartments
	apartments.each_with_index do |a, i|
		puts "\n##{i + 1}: #{a[:address]}"
	end

end

# Print apartment details
def apartments_detail apartments, tenants
	apartments.each_with_index do |a, i|
		t = tenants.select { |t| t[:apartment_id] == a[:id] }
		puts "\n##{i + 1}: #{a[:address]}\nRent: $#{a[:monthly_rent]}\nSize: #{a[:square_feet]}\nTenants:"
		t.each { |t| puts " - #{t[:name]}" }
	end

end



# Apartment options
def apartment_options apartments, tenants
	print "\n=== Apartment Sub-Menu ===\nEnter [1] for apartment list\nEnter [2] for apartment details\n>>> "
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
		puts "\n##{i + 1}: #{t[:name]}"
	end
end

# Print tenant details
def tenants_detail apartments, tenants
	tenants.each_with_index do |t, i|
		a = apartments.select { |a| a[:id] == t[:apartment_id] }
		puts "\n##{i + 1}: #{t[:name]}\nAge: #{t[:age]}\nAddress: #{a[0][:address]}"
	end
end

# Tenant lookup
def tenant_lookup apartments, tenants
	puts "\nEnter tenant's name"
	print ">>> "
	name = gets.chomp
	name = tenants.select { |t| t[:name].downcase == name.downcase }
	a = apartments.select { |a| a[:id] == name[0][:apartment_id] }
	puts a[0][:address]
end

# Tenant options
def tenant_options apartments, tenants
	print "\n=== Tenant Sub-Menu ===\nEnter [1] for tenant list\nEnter [2] for tenant details\nEnter [3] to look up a tenant's address\n>>> "
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



# Begin Program
def start_program apartments, tenants
	print "\n=== Landlord Main Menu ===\nEnter [1] for apartments\nEnter [2] for tenants\n>>> "
	input = gets.chomp

	# Process input
	if input == '1'
		apartment_options apartments, tenants
	elsif input == '2'
		tenant_options apartments, tenants
	end
end


start_program apartments, tenants
