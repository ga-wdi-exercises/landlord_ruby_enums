require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]
answer = ""


puts "Welcome to Bob Pizza's real estate app!"

while answer.upcase != "EXIT"
  puts "Type 1 to view an overview of tenants."
  puts "Type 2 to view an overview of properties."
  puts "Type 3 to view a list of properties and the tenants who live in each."
  puts "Type 4 to search for where a tenant lives by their name."
  puts "Type 0 for a personal message from Bob Pizza."
  puts "Type EXIT to leave."
  answer = gets.chomp
  if answer == "1"
    puts tenants
  elsif answer == "2"
    puts apartments
  elsif answer == "3"
    apartments.each do |apt|
      apt_id = apt[:id]
      puts "The residents of #{apt[:address]}:"
      tenants.each do |ten|
        if ten[:apartment_id] == apt_id
          puts "#{ten[:name]}"
        end
      end
    end
  elsif answer == "4"
    puts "What is the name of the tenant you are looking for?"
    input_name = gets.chomp
    tenant = tenants.find { |ten| ten[:name] == input_name}
    apartment_id = tenant[:apartment_id]
    apartment = apartments.find { |apt| apt[:id] == apartment_id}
    puts "#{input_name} lives at #{apartment[:address]}."
  elsif answer == "0"
    puts "Bob Pizza is hot and greasy from a long day in the oven."
    puts "Bob Pizza only accepts the juciest, most tender sausages for his toppings."
    puts "Bob Pizza cries during, but that doesn't make him any less delicious."
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
  # Print all the addresses for the apartments

  # apartments.each do |apt|
  #   apt_id = apt[:id]
  #   puts "The residents of #{apt[:address]}:"
  #   tenants.each do |ten|
  #     if ten[:apartment_id] == apt_id
  #       puts "#{ten[:name]}"
  #     end
  #   end
  #   # ten_id = tenants.find { |ten| ten[:apartment_id] == apt_id}
  #   # puts "#{ten_id[:name]} lives at #{apt[:address]}."
  # end
  # # Print all the names for tenants
  # tenants.each do |ten|
  #   apartment_id = ten[:apartment_id]
  #   apartment = apartments.find { |apt| apt[:id] == apartment_id}
  #   puts "#{ten[:name]} lives at #{apartment[:address]}."
  # end
  # # Print only apartments that are less then 700 in rent
  # puts "Under 700 a month ------------"
  # apartments.each do |apt|
  #   if apt[:monthly_rent] < 700
  #     apt_id = apt[:id]
  #     puts "The residents of #{apt[:address]}:"
  #     tenants.each do |ten|
  #       if ten[:apartment_id] == apt_id
  #         puts "#{ten[:name]}"
  #       end
  #     end
  #   # ten_id = tenants.find { |ten| ten[:apartment_id] == apt_id}
  #   # puts "#{ten_id[:name]} lives at #{apt[:address]}."
  #   end
  # end
  # # apartments.each do |apt|
  # #   if apt[:monthly_rent] < 700
  # #     puts apt[:id]
  # #   end
  # # end
  # # Print only tenants that are over the age of 44
  # puts "Older than 44 ------------"
  # tenants.each do |ten|
  #   if ten[:age] > 44
  #     apartment_id = ten[:apartment_id]
  #     apartment = apartments.find { |apt| apt[:id] == apartment_id}
  #     puts "#{ten[:name]} lives at #{apartment[:address]}."
  #   end
  # end
  # # Print only tenants that have an apartment id of 1
  # puts "At apt Id 1 ------------"
  # tenants.each do |ten|
  #   if ten[:apartment_id] == 1
  #     apartment_id = ten[:apartment_id]
  #     apartment = apartments.find { |apt| apt[:id] == apartment_id}
  #     puts "#{ten[:name]} lives at #{apartment[:address]}."
  #   end
  # end
  # # Print all the tenants in order from youngest to oldest
  # puts "Youngest to oldest ------------"
  # sorted = tenants.sort_by { |ten| ten[:age] }
  # sorted.each do |ten|
  #   apartment_id = ten[:apartment_id]
  #   apartment = apartments.find { |apt| apt[:id] == apartment_id}
  #   puts "#{ten[:name]} is #{ten[:age]} years old and lives at #{apartment[:address]}."
  # end
  # # Print the names of all the tenants alphabetically
  # puts "alphabetically ----------"
  # sorted = tenants.sort_by { |ten| ten[:name] }
  # sorted.each do |ten|
  #   puts ten[:name]
  # end
  # More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # puts "tenants and their addresses --------"
  # tenants.each do |ten|
  #   apartment_id = ten[:apartment_id]
  #   apartment = apartments.find { |apt| apt[:id] == apartment_id}
  #   puts "#{ten[:name]} lives at #{apartment[:address]}."
  # end
  # When printing all apartments, under each apartment print all of its tenants
