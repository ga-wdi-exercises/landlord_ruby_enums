require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured

    #The data is organized into two arrays of four-key hashes (one array for apartments and one for tenants).

  # What are the properties for each of the two types of hashes

    #The properties are id, address, monthly rent, and square feet for the apartment hashes.
    #They are id, name, age, and apartment ID for the tenant hashes.


# Use enumerables to -
  # Print all the addresses for the apartments
      #data[:apartments].each{|apt|puts apt[:address]}

  # Print all the names for tenants
      #data[:tenants].each{|tenant|puts tenant[:name]}

  # Print only apartments that are less then 700 in rent
      #data[:apartments].each{|apt| if apt[:monthly_rent]<700
      #puts apt
      #end}

  # Print only tenants that are over the age of 44
      #data[:tenants].each{|tenant| if tenant[:age]>44
        #puts tenant[:name]
        #end}

  # Print only tenants that have an apartment id of 1
  #data[:tenants].each{|tenant| if tenant[:apartment_id]==1
    #puts tenant[:name]
    #end}


  # Print all the tenants in order from youngest to oldest
  #data[:tenants].sort_by{|tenant| tenant[:age]}

  # Print the names of all the tenants alphabetically
  #puts data[:tenants].sort_by{|tenant| tenant[:name]}

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  #data[:tenants].each{|tenant|
    #address = data[:apartments].find{|apt| apt[:id]==tenant[:apartment_id]}
    #puts "#{tenant[:name]}, #{address[:address]}"}

  # When printing all apartments, under each apartment print all of its tenants
  #data[:apartments].each{|apt|
    #tenants = data[:tenants].find_all{|tenant| tenant[:apartment_id]==apt[:id]}.map{|tenant| tenant[:name]}
    #puts "#{apt[:address]}\n#{tenants}\n\n"}
