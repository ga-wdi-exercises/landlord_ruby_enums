require('pry')
require('terminal-table')
require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
apartments = data[:apartments]
tenants = data[:tenants]
ruby_apartments = []
ruby_tenants = []

rows = []
rows << ["All Apartments",1]
rows << ["All Tenants",2]
rows << ['Apartments w/ Tenants',3]
rows << ['Search Tenant Names',4]
rows << ['Tenant w/ Address',5]
rows << ['Quit program', 'quit']
table = Terminal::Table.new :title => "Enter a code to perform a function:", :headings => ['Command', 'Code' ], :rows => rows, :style => {:width => 40}

#
# # First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
#   # Explain how the data is structured
#   # What are the properties for each of the two types of hashes
#
# # It appears that the data file is a functions that stores 2 arrays of objects
# #   - Apartments Hash - contains 4 keys.  id (integer), address(string), monthly_rent(integer), square_feet(integrer)
# #   - Tenants Hash - contains 4 keys. id(integer), name(string), age(integer), apartment_id(integer)
#
#
# # Use enumerables to -
#   # Print all the addresses for the apartments
#   apartments.each { |hsh| puts hsh[:address]}
#   puts "============================================="
#
#   # Print all the names for tenants
#   tenants.each { |hsh| puts hsh[:name]}
#   puts "============================================="
#
#   # Print only apartments that are less then 700 in rent
#   apartments.each { |hsh| puts hsh if hsh[:square_feet] < 700}
#   puts "============================================="
#
#   # Print only tenants that are over the age of 44
#   tenants.each { |hsh| puts hsh if hsh[:age] > 44}
#   puts "============================================="
#
#   # Print only tenants that have an apartment id of 1
#   tenants.each { |hsh| puts hsh if hsh[:apartment_id] == 1}
#   puts "============================================="
#
#   # Print all the tenants in order from youngest to oldest
#   puts tenants.sort_by {|hsh| hsh[:age]}
#   puts "============================================="
#
#   # Print the names of all the tenants alphabetically
#   puts tenants.sort_by {|hsh| hsh[:name]}
#   puts "============================================="
#
#
#   ## More challenging
#   # When printing tenants also print out the address that the tenant resides in.
#   tenants.each do |hsh|
#     tenant_apart_id = hsh[:apartment_id]
#     arr_index = apartments.find_index{ |item| item[:id] == tenant_apart_id }
#     puts "#{hsh[:name]}  +++  #{apartments[arr_index][:address]}"
#   end
#
#   puts "============================================="
#
#   # When printing all apartments, under each apartment print all of its tenants
# apartments.each do |hsh|
#   apartment_id = hsh[:id]
#   puts "#{hsh}"
#
#   tenants.each do |item|
#     if item[:apartment_id] == apartment_id
#       puts "+++++ #{item[:name]}"
#     end
#   end
# end
apartments.each do |hsh|
	ruby_apartments << apartment = Apartment.new(hsh[:id], hsh[:address], hsh[:monthly_rent], hsh[:square_feet])
end

tenants.each do |hsh|
	ruby_tenants << tenant = Tenant.new(hsh[:id], hsh[:name], hsh[:age], hsh[:apartment_id])
end


rows = []
rows << ["All Apartments",1]

# DID NOT WORK
# def all_apartments(arr, title)
# 	puts "\nList of #{title}\n+++++++++++++++++++++++++++++++"
# 	arr.each { |item| puts item.address }
# 	puts "+++++++++++++++++++++++++++++++\n\n\n"
# end
#
# def all_tenants(arr, title, key)
# 	puts "\nList of #{title}\n+++++++++++++++++++++++++++++++"
# 	arr.each { |hsh| puts hsh.key }
# 	puts "+++++++++++++++++++++++++++++++\n\n\n"
# end

def apartments_with_tenants(apart_arr, tenant_arr, title)
	puts "\n#{title}\n+++++++++++++++++++++++++++++++"
	apart_arr.each do |hsh|
		apartment_id = hsh[:id]
		puts "#{hsh}"

		tenant_arr.each do |item|
			if item[:apartment_id] == apartment_id
				puts "+++++ #{item[:name]}"
			end
		end
	end
	puts "+++++++++++++++++++++++++++++++\n\n\n"
end

def tenant_with_address(apart_arr, tenant_arr, title)
	puts "\n#{title}\n+++++++++++++++++++++++++++++++"
	tenant_arr.each do |hsh|
		tenant_apart_id = hsh[:apartment_id]
		arr_index = apart_arr.find_index{ |item| item[:id] == tenant_apart_id }
		puts "#{hsh[:name]}  +++  #{apart_arr[arr_index][:address]}"
	end
	puts "+++++++++++++++++++++++++++++++\n\n\n"
end


user_active = true
user_response = nil

while user_active
	puts table
	puts "\n"
	user_response = gets.chomp
	if user_response.to_i == 1
    puts "\nList of Apartments\n+++++++++++++++++++++++++++++++"
  	ruby_apartments.each { |item| puts item.address }
  	puts "+++++++++++++++++++++++++++++++\n\n\n"
	elsif user_response.to_i == 2
    puts "\nList of tenants\n+++++++++++++++++++++++++++++++"
  	ruby_tenants.each { |item| puts item.name }
  	puts "+++++++++++++++++++++++++++++++\n\n\n"
	elsif user_response.to_i == 5
		tenant_with_address(ruby_apartments, ruby_tenants, 'Tenant w/ Address')
	elsif user_response.to_i == 4
		apartments_with_tenants(ruby_apartments, ruby_tenants, 'Apartments w/ Tenants')
	end
	break if user_response.downcase == "quit"
end

binding.pry
