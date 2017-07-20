require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes

# Use enumerables to -
  # Print all the addresses for the apartments
  puts "----- address for apartments -----"
apartments.each do |apartment|
puts apartment[:address]
end

  # Print all the names for tenants
  puts "----- tenants names -----"
  tenants.each do |tenant|
    puts tenant[:name]
  end

  # Print only apartments that are less then 700 in rent
puts "----- apartments less than 700 monthly rent -----"
  apartments.each do |apartment|
 if apartment[:monthly_rent] < 700
   puts apartment
  end
end

  # Print only tenants that are over the age of 44
  puts "----- tenants older than 44 -----"
  tenants.each do |tenant|
 if tenant[:age] > 44
   puts tenant[:name]
  end
end

  # Print only tenants that have an apartment id of 1
  puts "----- tenants with apartment id = 1 -----"
  tenants.each do |tenant|
 if tenant[:apartment_id] == 1
   puts tenant[:name]
  end
end

  # Print all the tenants in order from youngest to oldest
puts "---- tenants youngest to oldest -----"
  tenants.sort_by! do |value|
    value[:age]
  end
puts tenants

  # Print the names of all the tenants alphabetically
puts "---- tenants in alphabetical order -----"
  tenants.sort_by! do |alphabet|
    alphabet[:name]
  end
    puts tenants

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
#puts "---- tenants name and their address -----"
#  tenants.each do |tenant|
#    if tenants[:id] == apatrments[:id]
#puts "#{tenant[:name]}" + "#{tenant[:address]}"
#end
#end
  # When printing all apartments, under each apartment print all of its tenants


puts "Welcome to your property portal"
puts "Type '1' for tenants"
puts "Type '2' for apartments"
input = gets.chomp

case input
  when '1'
    puts "Type '1' to view tenants"
    puts "Type '2' to view addres"
      option1 = gets.chomp
    case option1
      when  '1'
        tenants.each {|tenant| puts tenant}
    end
  when '2'
    puts "Enter tenant name"
    tenant_name = gets.chomp
    tenants.each do |tenant|
      if tenant[:name] == tenant_name
        id_number = tenant[:apartment_id]
        apartments.each do |apartment|

          if id_number == apartment[:id]
            puts apartment[:address]
          end
        end
      end
  end
end
