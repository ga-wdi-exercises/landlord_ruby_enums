
# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes


              # ---------------------------------
  require_relative "data"
  apartments = data[:apartments]
  tenants = data[:tenants]
  # Use enumerables to -
              # ENUMERABLES: # each  is an enumerable # users = ["Alice", "Bob", "Carol"] # users.each do |user| #  puts user # end

# ...

              ## More challenging
              # THIS ONE IS ONE STEP BEYOND FOR ME
              # RIGHT NOW AS IT REQ A JOIN BETWEEN THE ARRAYS ON
              # THE APT ID FIELD
              # SELECT
              # When printing tenants also print out the address that the tenants resides in.
              # puts ''
              # THIS ONE WORKS ONLY WHEN EVERYTHING ABOVE IS
              # COMMENTED
              tenants.each do |tenant|
                 apartments.each do |apt|# Prints all the names for tenants # When printing tenants also print out the address that the tenant resides in.
                   if tenant[:apartment_id] == apt[:id]
                   puts "#{tenant[:name]} #{apt[:address]}"
                   end
                 end
               end

              # When printing all apartments, under each apartment print all of its tenants
