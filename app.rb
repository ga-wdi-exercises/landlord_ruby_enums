require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
apartments = data[:apartments]
tenants = data[:tenants]

# Use enumerables to -
# Print all the addresses for the apartments
# apartments.each do |apts|
#   puts apts[:address]
# end

# Print all the names for tenants
# tenants.each do |fam|
#   puts fam[:name]
# end

# Print only apartments that are less then 700 in rent
# puts apartments.select {|apts| apts[:monthly_rent] < 700}

# Print only tenants that are over the age of 44
# puts tenants.select {|fam| fam[:age] > 44}

# Print only tenants that have an apartment id of 1
# puts tenants.select {|fam| fam[:apartment_id] == 1}

# Print all the tenants in order from youngest to oldest
# puts tenants.sort_by {|fam| fam[:age]}

# Print the names of all the tenants alphabetically
# puts tenants.sort_by {|fam| fam[:name]}


  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants
