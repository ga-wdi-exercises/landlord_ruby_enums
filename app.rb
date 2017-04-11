require_relative "models/apartment"
require_relative "models/tenant"
require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]
ruby_apartments = []
ruby_tenants = []

# require 'pry'

  def program_select(apts, tnts, data)
      if data == 1
          apts.each do |apartment|
              puts "Here are the apartments you own: #{apartment}"
          end
      elsif data == 2
          tnts.each do |tenant|
              puts "Here are the tenants for all apartments: #{tenant}"
          end
      end
  end

  puts "Welcome, what would you like to view? Type 1 for apartments.  Type 2 for tenants"
  data_value = gets.chomp.to_i
  program_select(apartments, tenants, data_value)





ruby_tenants = []
ruby_apartments = []

tenants.each do |tenant|
    ruby_tenants.push Tenant.new(tenant[:id], tenant[:name], tenant[:age], tenant[:apartment_id])
end

apartments.each do |apartment|
    ruby_apartments.push Apartment.new(apartment[:id], apartment[:address], apartment[:monthly_rent], apartment[:square_feet])
end

# binding.pry
#
# puts "End of line"
# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes

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

  # The data is structured in a method with a return of two key value pairs apartments and tenants
  # For apartments the properties are (id, address, monthly_rent, square_feet) For tenants (id, name, age, apartment id)
  # ruby_apartments.each{|apartment| puts apartment.address}
  # ruby_tenants.each{|apartment| puts tenant.name}
  # ruby_apartments.select{|apartment| apartment.monthly_rent < 700}
  # ruby_tenants.select{|tenant| tenant.age < 44}
  # ruby_tenants.select{|tenant| tenant.id == 1}
  # ruby_tenants.sort_by{|tenant| tenant.age}
  # ruby_tenants.sort_by{|tenant| tenant.name}

  # ruby_tenants.each do |tenant|
  #     puts tenant.name
  #     whose_apartment = ruby_apartments.find{|apartment| apartment.id == tenant.apartment_id}
  #     puts whose_apartment.name
  # end

  # ruby_apartments.each do |apartment|
  # puts apartment.address
  # ruby_tenants_per_apartment = tenants.select{|tenant| tenant.apartment_id == apartment.id}
  # ruby_tenants_per_apartment.each do |tenant|
  # puts tenant.name
  # end
  # end
