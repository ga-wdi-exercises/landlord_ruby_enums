require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured

  # What are the properties for each of the two types of hashes


# Use enumerables to -

  # Print all the addresses for the apartments
apartments = each.do |address|
  puts address [:apartments]
end

  # Print all the names for tenants
tenants = each.do |tenant|
  puts tenants[:name]
end

  # Print only apartments that are less then 700 in rent
rent = each.sort_by |monthly_rent|
 puts rent[:monthly_rent]
end

  # Print only tenants that are over the age of 44
tenants = tenants.select do |tenant|
  apartment]:age > 44
end
puts tenants
  # Print only tenants that have an apartment id of 1
  apartment_one = tenants.select do |tenant|
    tenant[:apartment_id] == 1
  end
  puts apartment_1

  # Print all the tenants in order from youngest to oldest
age_tenants = tenants.sort_by do |tenant|
   tenant[:age]
end
puts age_tenants

  # Print the names of all the tenants alphabetically
  tenants.sort_by do |name|
    puts tenants[:name]
  end

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  tenants = each.do |tenant|
    puts tenant[:name]
    tenant_apartment = apartments.find {|apartment| apartment[:id] == tenant[:apartment_id]}
    puts tenants_apartment[]:name]
  end}

  # When printing all apartments, under each apartment print all of its tenants
