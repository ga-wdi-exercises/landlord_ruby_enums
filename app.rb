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
rows << ['Search Tenant Names', "n/a"]
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

def apartments_with_tenants(apart_arr, tenant_arr)
	'Apartments w/ Tenants'
  rows = []
	apart_arr.each do |hsh|
		apartment_id = hsh.id

    names = []
		tenant_arr.each do |item|
			if item.apartment_id == apartment_id
				names << item.name
			end
		end
    render_names = names.join("\n")
    rows << ["#{hsh.address}", render_names.to_s]
	end
	query_table = Terminal::Table.new :title => 'Apartments w/ Tenants', :headings => ['Apartment ID', 'Tenants' ], :rows => rows, :style => {:width => 60, :all_separators => true}
  puts query_table
end

def tenant_with_address(apart_arr, tenant_arr, title)
  rows = []
	tenant_arr.each do |hsh|
		tenant_apart_id = hsh.apartment_id
		arr_index = apart_arr.find_index{ |item| item.id == tenant_apart_id }
    rows << ["#{hsh.name}", "#{apart_arr[arr_index].address}"]
	end
	query_table = Terminal::Table.new :headings => ['Tenant', 'Address' ], :rows => rows, :style => {:width => 60}
  puts query_table
end

def search_tenants(ten_name)
  person = ten_name
  ten_id = nil
  ruby_tenants.each do |hsh|
    if hsh.name = person
      puts "#{hsh.name} - apartment:"
      ten_id = hsh.apartment_id
    end
    ruby_apartments.each do |item|
      puts item.address if item.id = ten_id
    end
  end
end


user_active = true
user_response = nil

while user_active
	puts table
	puts "\n"
	user_response = gets.chomp
  break if user_response.downcase == "quit"
	if user_response.to_i == 1
    rows = []
  	ruby_apartments.each { |item| rows << ["#{item.id}","#{item.address}"]  }
  	puts Terminal::Table.new :headings => ['Apt. Id', 'Address' ], :rows => rows, :style => {:width => 60}
	elsif user_response.to_i == 2
    rows = []
  	ruby_tenants.each { |item| rows << ["#{item.name}", "#{item.age}", "#{item.apartment_id}"]  }
    puts Terminal::Table.new :headings => ['Tenant', 'Age', "Apartment ID" ], :rows => rows, :style => {:width => 80, :all_separators => true}
	elsif user_response.to_i == 3
		apartments_with_tenants(ruby_apartments, ruby_tenants)
  # BUG: search tenant does not work right now
  # elsif user_response.to_i = 4
  #   puts "Type the full name of the tenant:"
  #   user_response = gets.chomp
  #   search_tenants(user_response)
  elsif user_response.to_i == 5
		tenant_with_address(ruby_apartments, ruby_tenants, 'Tenant w/ Address')
	end
end

binding.pry
