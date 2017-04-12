require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
      #Apartments and tenents are stored as two separate arrays. For apartments,
      #keys are 'id' 'address', 'monthly rent' and 'square feet'. For tenants,
      #there is 'name, ''age' and 'apartment_id'. Both arrays include an id for
      #'apartment'
  # What are the properties for each of the two types of hashes ^^

# Use enumerables to -
  # Print all the addresses for the apartments
    #puts address.all
  # Print all the names for tenants
    #puts name.all
  # Print only apartments that are less then 700 in rent
    # if monthly_rent < 700
        #puts #{apartments}
  # Print only tenants that are over the age of 44
    # if tenant.age > 44
        #puts #{name}
  # Print only tenants that have an apartment id of 1
    #  puts tenant.id = 1
  # Print all the tenants in order from youngest to oldest
    # puts tenents[:age] sort.by -
  # Print the names of all the tenants alphabetically
    # puts tenents[:name] sort.by -
  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants
