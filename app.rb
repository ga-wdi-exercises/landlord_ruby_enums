require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
# require_relative "seed"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes

# Use enumerables to -
  # Print all the addresses for the apartments
  # for address in apartments do
  #   puts address[:address]
  # end
  # Print all the names for tenants
  # for names in tenants do
  #   puts names[:name]
  # end
  # Print only apartments that are less then 700 in rent
  # for apts_less_than_700 in apartments do
  #   if apts_less_than_700[:monthly_rent] < 700
  #     puts apts_less_than_700[:address]
  #   end
  # end
  # Print only tenants that are over the age of 44
  # for age_over_44 in tenants do
  #   if age_over_44[:age] > 44
  #     puts age_over_44[:name]
  #   end
  # end
  # Print only tenants that have an apartment id of 1
  # for first_tenant in tenants do
  #   if first_tenant[:id] == 1
  #     puts first_tenant[:name]
  #   end
  # end
  # Print all the tenants in order from youngest to oldest
  # for young_to_old in tenants do
  #     puts order.sort_by!{ |young_to_old| [:age]}
  # end
  # Print the names of all the tenants alphabetically

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
# all_tenants = tenants.map do |tenant|
#   puts tenant[:id], tenant[:name], tenant[:age], tenant[:apartment_id]
# end
  # When printing all apartments, under each apartment print all of its tenants
# all_apartments = apartments.map do |apartment|
#   puts apartment[:id], apartment[:address], apartment[:monthly_rent], apartment[:square_feet]
# end


puts "Enter a Value '1' or '2'"
puts "1: Tenants, 2: Apartments"
user_input = gets.chomp.to_i

  if user_input == 1 # Tenants
    for tenant in tenants do
      puts tenant[:name], tenant[:apartment_id]
    end

  elsif user_input == 2 # Apartments
    for apartment in apartments do
      puts apartment[:address]
      puts apartment[:monthly_rent], apartment[:square_feet]
    end

  end
  # end
