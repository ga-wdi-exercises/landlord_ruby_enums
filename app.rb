require "pry"
require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"

# array of hashes with 4 symbols: id (int), address (string), monthly_rent (int), square_feet (int)
apartments = data[:apartments]
# array of hashes with 4 symbols, id (int), name (string), age (int), apartment_id (int)
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes

# Use enumerables to -
  # Print all the addresses for the apartments
    # apartments.each do |apt|
    #   puts apt[:address]
    # end
  # Print all the names for tenants
    # tenants.each do |tenant|
    #   puts tenant[:name]
    # end
  # Print only apartments that are less then 700 in rent
    # apartments.each do |apt|
    #   if apt[:monthly_rent] < 700
    #     puts apt
    #   end
    # end
  # Print only tenants that are over the age of 44
    # tenants.each do |tenant|
    #   if tenant[:age] > 44
    #     puts tenant
    #   end
    # end
  # Print only tenants that have an apartment id of 1
    # tenants.each do |tenant|
    #   if tenant[:apartment_id] == 1
    #     puts tenant
    #   end
    # end
  # Print all the tenants in order from youngest to oldest
    # puts tenants.sort_by { |tenant| tenant[:age] }
  # Print the names of all the tenants alphabetically
    # puts tenants.sort_by { |tenant| tenant[:name] }
  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
    # tenants.each do |tenant|
    #   apartments.each do |apartment|
    #     if apartment[:id] == tenant[:apartment_id]
    #       puts tenant
    #       puts apartment[:address]
    #     end
    #   end
    # end
  # When printing all apartments, under each apartment print all of its tenants
    # apartments.each do |apartment|
    #   tenants.each do |tenant|
    #     if apartment[:id] == tenant[:apartment_id]
    #       puts apartment
    #       puts tenant[:name]
    #     end
    #   end
    # end


ruby_apartments = []
ruby_tenants = []

apartments.each do |apartment|

end

tenants.each do |tenant|

end

menu = [
  {id: 1, option: "view all apartments"},
  {id: 2, option: "view all tenants"},
  {id: 3, option: "view all apartments with occupanying tenants"},
  {id: 4, option: "search for apartment by tenant name"},
  {id: 5, option: "evict tenant"},
  {id: 6, option: "lease apartment"},
  {id: 7, option: "add apartment"},
  {id: 8, option: "add tenant"}
]

def view_all_apartments

end

def main menu
  input = ""
  until input == "quit"
    puts menu
    puts "Enter a number or quit"
    input = gets.chomp

  # display menu
  # get user input
  # call appropriate function
  end
end

# main menu

binding.pry

puts "done"
