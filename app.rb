require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes

# Use enumerables to -
  # Print all the addresses for the apartments
	#   apartments.each do |apartment|
	#     puts apartment[:address]
	#   end
  # # Print all the names for tenants
	#   tenants.each do |tenant|
	#     puts tenant[:name]
	#   end
  # # Print only apartments that are less then 700 in rent
	#   apartments.each do |apartment|
	#   if apartment[:monthly_rent] < 700
	#     puts apartment
	#     end
	#   end
  # # Print only tenants that are over the age of 44
	#   tenants.each do |tenant|
	#     if tenant[:age] > 44
	#       puts tenant
	#       end
	#     end
  # # Print only tenants that have an apartment id of 1
	#   tenants.each do |tenant|
	#     if tenant[:apartment_id] == 1
	#       puts tenant
	#       end
	#     end
  # Print all the tenants in order from youngest to oldest
		# sort_age = tenants.sort_by do |item|
		#   item[:age]
		# end
		# puts sort_age
  # Print the names of all the tenants alphabetically
		sort_name = tenants.sort_by do |item|
			item[:name]
		end
		puts sort_name
  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants

