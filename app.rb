require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
apartments = data[:apartments]
tenants = data[:tenants]
ruby_apartments = []
ruby_tenants = []


ruby_apartments = apartments.each do |apt|
  Apartment.new(apt[:id], apt[:address], apt[:monthly_rent], apt[:square_feet])
end

ruby_tenants = tenants.each do |ten|
  Tenant.new(ten[:id], ten[:name], ten[:age], ten[:apartment_id])
end


answer = ""


puts "Welcome to Bob Pizza's real estate app!"

while answer.upcase != "EXIT"
  puts " "
  puts "Type 1 to view an overview of ruby_tenants."
  puts "Type 2 to view an overview of properties."
  puts "Type 3 to view a list of properties and the ruby_tenants who live in each."
  puts "Type 4 to search for where a tenant lives by their name."
  puts "Type 5 to evict a tenant (search by their name)."
  puts "Type 6 to add a tenant to an apartment (search tenant by their name and apt by id)."
  puts "Type 7 to add a new property."
  puts "Type 8 to add a new tenant."
  puts "Type 0 for a personal message from Bob Pizza."
  puts "Type EXIT to leave."
  answer = gets.chomp
  if answer == "1"
    puts ruby_tenants
  elsif answer == "2"
    puts ruby_apartments
  elsif answer == "3"
    ruby_apartments.each do |apt|
      apt_id = apt[:id]
      puts "The residents of #{apt[:address]}:"
      ruby_tenants.each do |ten|
        if ten[:apartment_id] == apt_id
          puts "#{ten[:name]}"
        end
      end
    end
  elsif answer == "4"
    puts "What is the name of the tenant you are looking for?"
    input_name = gets.chomp
    tenant = ruby_tenants.find { |ten| ten[:name] == input_name}
    apartment_id = tenant[:apartment_id]
    puts apartment_id
    apartment = ruby_apartments.find { |apt| apt[:id] == apartment_id}
    puts "#{input_name} lives at #{apartment[:address]}."
  elsif answer == "5"
    puts "What is the name of the tenant you are kicking out?"
    input_name = gets.chomp
    tenant = ruby_tenants.find { |ten| ten[:name] == input_name}
    apartment_id = tenant[:apartment_id]
    apartment = ruby_apartments.find { |apt| apt[:id] == apartment_id}
    puts "#{input_name} no longer lives at #{apartment[:address]} and has been evicted."
    tenant[:apartment_id] = 0
  elsif answer == "6"
    puts "What is the name of the tenant you are adding to an apartment?"
    input_name = gets.chomp
    tenant = ruby_tenants.find { |ten| ten[:name] == input_name}
    puts "What is the id of the apartment you are adding the tenant to?"
    tenant[:apartment_id] = gets.chomp.to_i
    apartment_id = tenant[:apartment_id]
    apartment = ruby_apartments.find { |apt| apt[:id] == apartment_id}
    puts "#{input_name} now lives at #{apartment[:address]}."
  elsif answer == "7"
    puts "What is the address of your new apartment?"
    address = gets.chomp
    puts "What is the monthly rent of your new apartment?"
    monthly_rent = gets.chomp.to_i
    puts "What is the square footage of your new apartment?"
    square_feet = gets.chomp.to_i
    ruby_apartments.push({:id=>ruby_apartments.last[:id] + 1, :address=>address, :monthly_rent=>monthly_rent, :square_feet=>square_feet})
    puts "#{address} is now an apartment with a monthly rent of #{monthly_rent} and a square footage of #{square_feet}."
  elsif answer == "8"
    puts "What is the name of your new tenant?"
    name = gets.chomp
    puts "What is the age of your new tenant?"
    age = gets.chomp.to_i
    puts "What is the id of their apartment? (Set to 0 if none.)"
    apartment_id = gets.chomp.to_i
    apartment = ruby_apartments.find { |apt| apt[:id] == apartment_id}
    ruby_tenants.push({:id=>ruby_tenants.last[:id] + 1, :name=>name, :age=>age, :apartment_id=>apartment_id})
    puts "#{name} is now a tenant who is #{age} years old who lives at #{apartment[:address]}."
  elsif answer == "0"
    puts "Bob Pizza is hot and greasy from a long day in the oven."
    puts "Bob Pizza only accepts the juciest, most tender sausages for his toppings."
    puts "Bob Pizza cries during, but that doesn't make him any less delicious."
    puts "- Bob Pizza"
  elsif answer.upcase == "EXIT"
    puts "Bob Pizza sends his regards..."
  else
    puts "Invalid input. Please try again."
  end
end







# First, Open the data.rb and inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes

# Use enumerables to -
  # Print all the addresses for the ruby_apartments

  # ruby_apartments.each do |apt|
  #   apt_id = apt[:id]
  #   puts "The residents of #{apt[:address]}:"
  #   ruby_tenants.each do |ten|
  #     if ten[:apartment_id] == apt_id
  #       puts "#{ten[:name]}"
  #     end
  #   end
  #   # ten_id = ruby_tenants.find { |ten| ten[:apartment_id] == apt_id}
  #   # puts "#{ten_id[:name]} lives at #{apt[:address]}."
  # end
  # # Print all the names for ruby_tenants
  # ruby_tenants.each do |ten|
  #   apartment_id = ten[:apartment_id]
  #   apartment = ruby_apartments.find { |apt| apt[:id] == apartment_id}
  #   puts "#{ten[:name]} lives at #{apartment[:address]}."
  # end
  # # Print only ruby_apartments that are less then 700 in rent
  # puts "Under 700 a month ------------"
  # ruby_apartments.each do |apt|
  #   if apt[:monthly_rent] < 700
  #     apt_id = apt[:id]
  #     puts "The residents of #{apt[:address]}:"
  #     ruby_tenants.each do |ten|
  #       if ten[:apartment_id] == apt_id
  #         puts "#{ten[:name]}"
  #       end
  #     end
  #   # ten_id = ruby_tenants.find { |ten| ten[:apartment_id] == apt_id}
  #   # puts "#{ten_id[:name]} lives at #{apt[:address]}."
  #   end
  # end
  # # ruby_apartments.each do |apt|
  # #   if apt[:monthly_rent] < 700
  # #     puts apt[:id]
  # #   end
  # # end
  # # Print only ruby_tenants that are over the age of 44
  # puts "Older than 44 ------------"
  # ruby_tenants.each do |ten|
  #   if ten[:age] > 44
  #     apartment_id = ten[:apartment_id]
  #     apartment = ruby_apartments.find { |apt| apt[:id] == apartment_id}
  #     puts "#{ten[:name]} lives at #{apartment[:address]}."
  #   end
  # end
  # # Print only ruby_tenants that have an apartment id of 1
  # puts "At apt Id 1 ------------"
  # ruby_tenants.each do |ten|
  #   if ten[:apartment_id] == 1
  #     apartment_id = ten[:apartment_id]
  #     apartment = ruby_apartments.find { |apt| apt[:id] == apartment_id}
  #     puts "#{ten[:name]} lives at #{apartment[:address]}."
  #   end
  # end
  # # Print all the ruby_tenants in order from youngest to oldest
  # puts "Youngest to oldest ------------"
  # sorted = ruby_tenants.sort_by { |ten| ten[:age] }
  # sorted.each do |ten|
  #   apartment_id = ten[:apartment_id]
  #   apartment = ruby_apartments.find { |apt| apt[:id] == apartment_id}
  #   puts "#{ten[:name]} is #{ten[:age]} years old and lives at #{apartment[:address]}."
  # end
  # # Print the names of all the ruby_tenants alphabetically
  # puts "alphabetically ----------"
  # sorted = ruby_tenants.sort_by { |ten| ten[:name] }
  # sorted.each do |ten|
  #   puts ten[:name]
  # end
  # More challenging
  # When printing ruby_tenants also print out the address that the tenant resides in.
  # puts "tenants and their addresses --------"
  # ruby_tenants.each do |ten|
  #   apartment_id = ten[:apartment_id]
  #   apartment = ruby_apartments.find { |apt| apt[:id] == apartment_id}
  #   puts "#{ten[:name]} lives at #{apartment[:address]}."
  # end
  # When printing all ruby_apartments, under each apartment print all of its ruby_tenants
