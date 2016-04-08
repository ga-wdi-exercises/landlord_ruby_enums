require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured: in arrays of hashes
  # What are the properties for each of the two types of hashes
  # apartments :id, :address, :monthly_rent, :square_feet
  # tenants :id, :name, :age, :apartment_id

# Use enumerables to -
  # Print all the addresses for the apartments

  # apartments.map do |flat|
  #   puts flat[:address]
  # end

  # Print all the names for tenants

# tenants.map do |tenant|
#   puts tenant[:name]
# end

  # Print only apartments that are less then 700 in rent

# puts apartments.select {|apartment| apartment[:monthly_rent] < 700}

  # Print only tenants that are over the age of 44

# puts tenants.select {|tenant| tenant[:age] > 44}

  # Print only tenants that have an apartment id of 1

# puts tenants.select {|tenant| tenant[:apartment_id] == 1}

  # Print all the tenants in order from youngest to oldest

# puts tenants.sort_by {|tenant| tenant[:age]}

  # Print the names of all the tenants alphabetically

  # puts tenants.sort_by{|tenant| tenant[:name].downcase}

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.

 # but used .select instead of .each to grab the apartment id and then puts-ed the address and the tenant name.
 # tenants.each do |tenant|
 #    apartments.select { |apartment| apartment[:id] }
 #    puts apartment[:address]
 #    puts tenant[:name]
 #  end

 def address_book(tenants, apartments)
   tenants.each do |tenant|
    puts tenant[:name]
    tenant_apartment = apartments.select{|apartment| apartment[:id] == tenant[:apartment_id]}
    puts ' ' + tenant_apartment[0][:address]
  end
end



  # numbered interface for my application so that I can just type in a number to access different parts of my program.
  # option to view all the apartments so that I can get an overview of my properties.
  # should be allowed  an option view all the tenants so that I can get an overview of my tenants

puts "Hello Bob. How are you today?"
while gets.chomp != "fine"
  puts "Just tell me what I want to hear."
end
puts "Glad you decided to play ball. Your usual menu: \n
Type 1 to overview all the apartments, type 2 to overview the tenants.\n
Type 3 to view all the apartments with their tenants, type 4 to find where a tenant lives based on his/her name."
user_input = gets.chomp
if user_input == "1"
  puts apartments
elsif user_input == "2"
  puts tenants
elsif user_input == "3"
   address_book(tenants, apartments)
end
