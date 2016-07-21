require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]
require_relative "models/apartments"
require_relative "models/tenants"
ruby_apartments = []
ruby_tenants = []

# Create all apartment Objects
def aparments_instance(apartments, ruby_apartments)
  apartments.each do |apart|
    apart[:id] = Apartments.new(apart[:id], apart[:address], apart[:monthly_rent], apart[:square_feet])
    ruby_apartments.push(apart[:id])
  end
  return ruby_apartments
end

# Create all tenant Objects
def tenant_objects(tenants, ruby_tenants)
  tenants.each do |tenant|
    tenant[:name] = Tenants.new(tenant[:id], tenant[:name], tenant[:age], tenant[:apartment_id])
    ruby_tenants.push(tenant[:name])
  end
  return ruby_tenants
end

# Welcome message and options
def message_options_start()
  puts "\n"
  puts "********************** Welcome to your personal App **********************"  
  puts "\n"
  puts "Please type 1 to: veiw all apartments addressses." 
  puts "Please type 2 to: veiw all tenants names."
  puts "Please type 3 to: veiw a give apartment and its tenant"
  puts "Please type 4 to: choose a tenant by name and their corresponding apartment."
  puts "To exit the program please the 'exit'."   
  puts "\n"
  puts "********************** I am Pretty, OH so Pretty. I feel Pretty and Witty and Gay *************************"
  print "Option: "
  choice = gets.chomp
  puts "\n"
  return choice
end

# Just message and options
def message_option_end()
  puts "\n"
  puts "******************** Your Options are ********************"
  puts "Please type 1 to: veiw all apartments addresses." 
  puts "Please type 2 to: veiw all tenants names."
  puts "Please type 3 to: veiw a give apartment and its tenant"
  puts "Please type 4 to: choose a tenant by name and their corresponding apartment."
  puts "To exit the program please the 'exit'."
  print "Option: "
  choice = gets.chomp
  puts "\n"
  return choice
end

# Get apartment id 
def apartment_id()
  print "To view an apartment and its tenants, please type the apartment number: "
  apart_num = gets.chomp
  puts "\n"
  return apart_num
end

# Get list out the tenants names and get one in return
def tenant_name(ruby_tenants)
    puts "Which tenants would you like to choose?"
    puts "\n"
  ruby_tenants.each do |tenants|
    puts tenants.name
  end
    print "Please type a tenants full name: "
    tenant_name = gets.chomp
    return tenant_name
end


# Start up app
def start_app(apartments, tenants, ruby_apartments, ruby_tenants)
  # create objects for apartments and tenants
  aparments_instance(apartments, ruby_apartments)
  tenant_objects(tenants, ruby_tenants)
  choice = message_options_start()
  while choice != 'exit'
    if choice.to_i == 1
      ruby_apartments.each do |apartment|
        puts apartment.address 
      end
    elsif choice.to_i == 2
      ruby_tenants.each do |tenant|
        puts tenant.name
      end
    elsif choice.to_i == 3
      apart_id = apartment_id()
      ruby_tenants.each do |tenant|
        if tenant.apartment_id.to_i == apart_id.to_i
          puts tenant.name        
        end
      end
      puts "\n" 
      puts "Live at #{ruby_apartments[apart_id.to_i].address}" 
      puts "\n"
    elsif choice.to_i == 4
      tenant_name = tenant_name(ruby_tenants)
      ruby_tenants.each do |tenant|
        if tenant_name == tenant.name
          tenant_apt_id = tenant.apartment_id
          puts "\n"
          puts "#{tenant.name} lives at #{ruby_apartments[tenant_apt_id].address}."
          puts "\n"
        end
      end
    end
    choice = message_option_end()
  end
end


start_app( apartments, tenants, ruby_apartments, ruby_tenants)

# # Get apartments
# def apartments(apartments)
#   puts "apt running"
#   apartments.each do |apartments|
#     puts apartments
#   end
# end

# # Get tenants
# def tenants(tenants)
#   tenants.each do |tenants|
#     puts tenants
#   end
# end


# # First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
#   # Explain how the data is structured
#   # What are the properties for each of the two types of hashes

# # Use enumerables to -
#   # Print all the addresses for the apartments
# 	#   apartments.each do |apartment|
# 	#     puts apartment[:address]
# 	#   end
#   # # Print all the names for tenants
# 	#   tenants.each do |tenant|
# 	#     puts tenant[:name]
# 	#   end
#   # # Print only apartments that are less then 700 in rent
# 	#   apartments.each do |apartment|
# 	#   if apartment[:monthly_rent] < 700
# 	#     puts apartment
# 	#     end
# 	#   end
#   # # Print only tenants that are over the age of 44
# 	#   tenants.each do |tenant|
# 	#     if tenant[:age] > 44
# 	#       puts tenant
# 	#       end
# 	#     end
#   # # Print only tenants that have an apartment id of 1
# 	#   tenants.each do |tenant|
# 	#     if tenant[:apartment_id] == 1
# 	#       puts tenant
# 	#       end
# 	#     end
#   # Print all the tenants in order from youngest to oldest
# 		# sort_age = tenants.sort_by do |item|
# 		#   item[:age]
# 		# end
# 		# puts sort_age
#   # Print the names of all the tenants alphabetically
# 		sort_name = tenants.sort_by do |item|
# 			item[:name]
# 		end
# 		puts sort_name
#   ## More challenging
#   # When printing tenants also print out the address that the tenant resides in.
#   # When printing all apartments, under each apartment print all of its tenants

