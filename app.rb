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
  puts ruby_apartments[0].id
  return ruby_apartments
end

# Create all tenant Objects
def tenant_objects(tenants)
  tenants.each do |tenant|
    name = tenant[:name]
    name  = Tenants.new(tenant[:id], tenant[:name], tenant[:age], tenant[:apartment_id])
  end
end

# Welcome message and options
def message_options_start()
  puts "\n"
  puts "********************** Welcome to your personal App **********************"  
  puts "Please type 1 to: veiw all apartments." 
  puts "Please type 2 to: veiw all tenants."
  puts "Please type 3 to: veiw a give apartment and its tenant"
  puts "To exit the program please the 'exit'."   
  puts "********************** I am Pretty, OH so Pretty. I feel Pretty and Witty and Gay *************************"
  puts "\n" 
  choice = gets.chomp
  return choice
end

# Just message and options
def message_option_end()
  puts "\n"
  puts "Please type 1 to: veiw all apartments." 
  puts "Please type 2 to: veiw all tenants."
  puts "Please type 3 to: veiw a give apartment and its tenant"
  puts "To exit the program please the 'exit'."
  puts "\n"
  choice = gets.chomp
  return choice
end

# Get apartment id 
def apartment_id()
  puts "To view an apartment and its tenants, please type the apartment number."
  apart_num = gets.chomp
  return apart_num
end

# Start up app
def start_app(apartments, tenants, ruby_apartments)
  # create objects for apartments and tenants
  aparments_instance(apartments, ruby_apartments)
  tenant_objects(tenants)
  choice = message_options_start()
  while choice != 'exit'
    if choice.to_i == 1
      apartments.each do |apartment|
        puts apartment 
      end
    elsif choice.to_i == 2
      tenants.each do |tenant|
        puts tenant
      end
    elsif choice.to_i == 3
      apart_id = apartment_id()
      tenants.each do |tenant|
        if tenant[:apartment_id] == apart_id.to_i
          apartment = apart[apart_id.to_i]
          puts tenant[:name], apartment[:address]
        end
      end
    end
    choice = message_option_end()
  end
end
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


  start_app( apartments, tenants, ruby_apartments)

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

