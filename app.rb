require_relative "data"
require_relative "seed"
require_relative "models/apartment"
require_relative "models/tenant"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # **"data" is defined as a method, def data. Also uses return for two key value pairs**
  # What are the properties for each of the two types of hashes
    #of the two key-value pairs, one is apartments with properties of id, address, monthly_rent, and square_feet
    #the other is tenants and has properties of id, name, age, and apartment_id

# Use enumerables to -
  # Print all the addresses for the apartments
  # Print all the names for tenants
  # Print only apartments that are less then 700 in rent
  # Print only tenants that are over the age of 44
  # Print only tenants that have an apartment id of 1
  # Print all the tenants in order from youngest to oldest
  # Print the names of all the tenants alphabetically

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants


  list_apartments = apartments.map do |apartment|
    Apartment.new(apartment[:id], apartment[:address], apartment[:monthly_rent], apartment[:square_feet])
  end

  list_tenants = tenants.map do |tenant|
    Tenant.new(tenant[:id], tenant[:name], tenant[:age], tenant[:apartment_id])
  end

  def multiply
puts "*" * 80
  end

def options
puts "Enter a number to select an option or 'exit' to exit the program"
puts "1) View Properties"
puts "2) View Tenants"
puts "3) View full overview"
gets.chomp
end




system "clear page"
puts "Landlord app"
multiply
home_page = options
while home_page != "exit"


if home_page == "1"    #beginning of MVP #1
 system "clear page"
 puts "Property Listings"
 list_apartments.each do |apartment|
   puts apartment.address
 end

 puts "Press Enter key for next page"
elsif home_page == "2"   #MVP #2
 system "clear page"
 puts "Tenant Listings"
 list_tenants.each do |tenant|
   puts tenant.name
 end

 puts "Press Enter key for next page"

elsif home_page == "3" #MVP #3
 system "clear page"
 puts "Address List"
 list_apartments.each do |apartment|
   puts apartment.address
   puts "Residents:"
   apartment_tenants = list_tenants.select{|tenant|
     tenant.apartment_id == apartment.id}
   puts "Vacancy" if apartment_tenants.length == 0
   apartment_tenants.each{|tenant| puts tenant.name}
   multiply
 end
 puts "Press Enter key for next page"
end

gets.chomp

system "clear page"
puts (home_page)
home_page = options
end
