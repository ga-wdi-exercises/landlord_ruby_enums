require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
      # apartments - array of hashes, each hash is an apartment with an ID
      # tenants - array of hashes, each hash is a tenant that corresponds to an apartment ID
  # What are the properties for each of the two types of hashes
      # apartments - id #, :address str, :monthly_rent #, :square_feet #
      # tenants - :id #, :name str, :age #, :apartment_id #

# Use enumerables to -
  # Print all the addresses for the apartments
  # apartments.each {|apartment| p apartment[:address]}
  # # Print all the names for tenants
  # tenants.each {|tenant| p tenant[:name]}
  # # Print only apartments that are less then 700 in rent
  # cheap_apartments = apartments.select {|apartment| apartment[:monthly_rent] < 700}
  # p cheap_apartments
  # # Print only tenants that are over the age of 44
  # old_tenants = tenants.select {|tenant| tenant[:age] > 44}
  # p old_tenants
  # Print only tenants that have an apartment id of 1
  # tenant_1 = tenants.select{|tenant| p tenant[:apartment_id] == 1}
  # p tenant_1
  # Print all the tenants in order from youngest to oldest
  # tenant_by_age = tenants.sort_by {|tenant| tenant[:age]}
  # p tenant_by_age
  # # Print the names of all the tenants alphabetically
  # tenants_by_name = tenants.sort_by {|tenant| tenant[:name]}
  # tenants_by_name.each {|tenant| p tenant[:name]}

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants

# START APP #
br = "*" *100 +"\n"
all_apartments = apartments.each {|apartment| apartment}
all_tenants = tenants.each {|tenant| tenant}


while true
  puts "#{br} Welcome to Landlord.app, you have the following options: "
  puts "  1. View all apartments\n  2. View all tenants\n  3. View tenants by apartments\n  4. Find tenant by name\n  5. Make changes \n (Select an option by entering the corresponding number)\n#{br}"

  user_input = gets.chomp
    if user_input == "1"
      puts all_apartments
    elsif user_input == "2"
      puts all_tenants
    elsif user_input == "3"
      apartments.each do |apartment|
        puts "#{br}  APARTMENT\n#{apartment.to_s}\n#{br}"
        tenants_by_id = tenants.select{|tenant| tenant[:apartment_id] == apartment[:id]}
        puts "  TENANTS\n#{tenants_by_id.to_s}\n"
      end
    elsif user_input == "4"
      puts "Enter a name:"
      tenant_name = gets.chomp
      tenants.each do |tenant|
        if tenant[:name].downcase.include? tenant_name
          puts tenant
        end
      end
    elsif user_input == "5"
      puts "Sorry, this functionality is still in alpha testing"
    end
  end
