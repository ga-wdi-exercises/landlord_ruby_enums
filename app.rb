require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured

  # there are apartment and ttenant ids that match the index of their respective arrays +1
  # each address for an apartment of array apartments is the only string in the dataset
  # apartments hash also contains monthly rent and square footage of the apartment
  # tenants hash contains name age and apartment ID
# ****************psuedo code*****************
  # Use enumerables to -
  #   apartments |apartment|
  #   puts apartments.address;
  #   tenants |tenant|
  #   puts tenants.name;
  #   apartments |apartment|
  #   if rent < 700
  #   puts apartments.address
  #   tenants |tenant|
  #   if age <40
  #   puts tenant.name
  #   tenants |tenant|
  #   if apartment_id == 1 {puts tenant.name}
  # tenants.sort!(age)
  #   tenants.sort!(name)
#********************************************

# Print all the addresses for the tenants
    # apartments.each do |apartment|
    #   puts apartment.address
    # end
  # Print all the names for tenants
    # tenants.each do |tenant|
    #   puts tenant.name
    # end
  # Print only apartments that are less then 700 in rent
    # rent = apartments.select do |apartment|
    #   apartment.monthly_rent < 700
    # end
    # puts rent
  # Print only tenants that are over the age of 44
    # oldPeople = tenants.select do |tenant|
    #   apartment.age > 44
    # end
    # puts older_tenants
  # Print only tenants that have an apartment id of 1
    # apartment_building_one = tenants.select do |tenant|
    #   tenant.apartment_id == 1
    # end
    # puts apartment_building_one
  # Print all the tenants in order from youngest to oldest
    # age = tenants.sort_by do |tenant|
    #   tenant.age
    # end
  # Print the names of all the tenants alphabetically
    # name = tenants.sort_by do |a|
    #   a.name
# end

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants
