require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes

# Use enumerables to -
  # Print all the addresses for the apartments
  apartments_address = apartments.each {|apt| puts apt[:address]}
  # Print all the names for tenants
  names = tenants.each {|tenant| puts tenant[:name] }
  # Print only apartments that are less then 700 in rent
   less_than_700 = apartments.each {|apartment|
        if(apartment[:monthly_rent] < 700)
        puts apartment[:id]
      end
      }
  # Print only tenants that are over the age of 44
  over44 = tenants.each {|person| if (person[:age] > 44)
    puts person[:name]
  end
}
  # Print only tenants that have an apartment id of 1
 id_one = tenants.each {|tenant|
      if(tenant[:apartment_id] == 1)
        puts tenant[:name]
      end
    }

  # Print all the tenants in order from youngest to oldest
  young_to_old = tenants.sort_by {|tenant| tenant[:age]}
    
  # Print the names of all the tenants alphabetically
  a_z = tenants.sort_by {|tenant|tenant[:name]}

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  
  # When printing all apartments, under each apartment print all of its tenants
