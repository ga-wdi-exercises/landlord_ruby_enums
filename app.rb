require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # The data is structured as two tables.  Each table with fields pertinent to the table name of Apatments ad Tenants.  The tables are linked by the apartment id existing as a foreign key in the Tenants table.
  # What are the properties for each of the two types of hashes
  # The properties for each hash are: For the Apartments hash; id; address; rent; square feet.
  # For the Tenant hash: id; name; age; apartment id.

# Use enumerables to -
  # Print all the addresses for the apartments

apartments.map do |add|
  the_address = add[:address]
  puts the_address
end

  # Print all the names for tenants
tenants.map do |name|
  the_name = name[:name]
  puts the_name
end

  # Print only apartments that are less then 700 in rent
puts apartments.find_all {|apt| apt[:monthly_rent] < 700} 

  # Print only tenants that are over the age of 44
puts tenants.find_all {|peeps| peeps[:age] > 44}


  # Print only tenants that have an apartment id of 1
puts tenants.find_all {|peeps| peeps[:apartment_id] == 1}

  # Print all the tenants in order from youngest to oldest
sorted_tenants = tenants.sort_by do |item|
  item[:age]
end
puts sorted_tenants


  # Print the names of all the tenants alphabetically
titles = ["Miss ", "Mrs. ", "Ms. ", "Dr. ", "Mr. "]
temp = ""
tenants.each do |name|
    if name.include?titles
      puts name[:name].gsub! titles, "" 
      puts temp
    end
  end

sorted_tenants = tenants.sort_by do |item|
  item[:name]
end
puts sorted_tenants

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.


  # When printing all apartments, under each apartment print all of its tenants
