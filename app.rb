


# class Property_mangement

#   def initialize()
#   end



# # First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
#   # Explain how the data is structured
#   # The data is structured as two tables.  Each table with fields pertinent to the table name of Apatments ad Tenants.  The tables are linked by the apartment id existing as a foreign key in the Tenants table.
#   # What are the properties for each of the two types of hashes
#   # The properties for each hash are: For the Apartments hash; id; address; rent; square feet.
#   # For the Tenant hash: id; name; age; apartment id.

# # Use enumerables to -
#   # Print all the addresses for the apartments

#   def print_all_addresses
#     @apartments.map do |add|
#       the_address = add[:address]
#       puts the_address
#     end
#   end


#   def print_all_tenant_names
#     @tenants.map do |name|
#       the_name = name[:name]
#       puts the_name
#     end
#   end

#   def print_cheap_apts
#     puts @apartments.find_all {|apt| apt[:monthly_rent] < 700} 
#   end

#   def print_tenants_over_age
#     puts @tenants.find_all {|peeps| peeps[:age] > 44}
#   end


#   def print_tenants_in_apt
#     puts @tenants.find_all {|peeps| peeps[:apartment_id] == 1}
#   end

#   def print_tenants_by_age
#     sorted_tenants = @tenants.sort_by do |item|
#       item[:age]
#     end
#     puts sorted_tenants
#   end


#   def print_tenants_alpha
#     sorted_tenants = @tenants.sort_by do |item|
#       item[:name]
#     end
#     puts sorted_tenants
#   end

#   # More challenging
#   # When printing tenants also print out the address that the tenant resides in.

#   def print_tenant_and_apt
#     @tenants.each do |item|
#       @tenants_apartment_id = item[:apartment_id]
#       puts item
#       puts @apartments[@tenants_apartment_id]
#       puts "*" * 50
#     end
#   end
# end


  # When printing all apartments, under each apartment print all of its tenants


# bob = Property_mangement.new


require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]
choice = ""



class Apartment
  attr_accessor(:apt_id, :addr, :rent, :size)
  def initialize(id, addr, rent, size)
    @apt_id = id
    @addr = addr
    @rent = rent
    @size = size
  end
  #   # Print all the addresses for the apartments

  def print_all_addresses
    apartments.map do |apts|
      the_address = apt.address
      puts the_address
    end
  end

  def id
    @id
  end

  def addr
    @addr
  end

  def rent
    @rent
  end


end

class Tenant
  attr_accessor(:id, :name, :age, :apartment_id)
  def initialize(id, name, age, apt_id)
    @id = id
    @name = name
    @age = age
    @apartment_id = apt_id
  end

  def id
    @id
  end

  def name
    @name
  end

  def age
    @age
  end

  def apt_id
    @apartment_id
  end

end




def print_all_addresses()
  ruby_apts.each do |apt|
    puts apt.addr
  end
end

def apt_options(choice, ruby_apts, ruby_tenants)
  puts "apt options while loop. choice = " + choice
  while choice.to_i < 3 do
    puts "Here are the Apartment Options:"
    puts
    puts "1. Show all Apartment Adresses"
    puts "2. Show all Cheap Apartments"
    puts "3. Return to previous menu"
    puts "4. Exit Application"
    choice = gets.chomp
    if choice == "1"
      puts "apt options choice 1. choice = " + choice
      ruby_apts.each do |apt|
        puts apt.addr
      end
      choice = "1"
      return choice
    elsif choice == "2"
      puts "apt options choice 2. choice = " + choice
      puts ruby_apts[0].rent
      ruby_apts.find_all {|apt| apt.rent < 700}
      # puts "Rent for appt " + apt.addr + " is " apt.rent
      choice = "1"
      return choice
    end
    # case choice
    # when "1"
    #   ruby_apts.each do |apt|
    #   puts apt.addr
    #   choice = "1"
    #   return choice
    #   end
    # # when "2"
    # #   puts ruby_apts.find_all {|apt| apt.monthly_rent < 700} 
    # #   choice = "1"
    # #   return choice
    # # when "3"
    # #   choice = "0"
    # #   return choice
    # # when "4"
    # #   return choice = 4
    # end

    
  end
end

def tenant_options(choice, ruby_apts, ruby_tenants)
  puts "apt options while loop. choice = " + choice
  while choice.to_i < 3 do
    puts "Here are the Tenant Options:"
    puts
    puts "1. Show all Tenants"
    puts "2. Show all Tenants over age"
    puts "3. Return to previous menu"
    puts "4. Exit Application"
    choice = gets.chomp
    if choice == "1"
      puts "tenant options choice 1. choice = " + choice
      ruby_tenants.each do |tenant|
        puts tenant.name
      end
      choice = "1"
      return choice
    elsif choice == "2"
      # puts "tenant options choice 2. choice = " + choice
      # ruby_tenants.find_all do {|peeps| peeps.age > 44}
      #   puts peeps.name peeps.age
      # end
      choice = "1"
      return choice
    end
    # case choice
    # when "1"
    #   ruby_apts.each do |apt|
    #   puts apt.addr
    #   choice = "1"
    #   return choice
    #   end
    # # when "2"
    # #   puts ruby_apts.find_all {|apt| apt.monthly_rent < 700} 
    # #   choice = "1"
    # #   return choice
    # # when "3"
    # #   choice = "0"
    # #   return choice
    # # when "4"
    # #   return choice = 4
    # end

    
  end
end


def start_menu(choice)
  puts "Please enter the number of the activity you would like to do:"
  puts "1. Apartment Menu"
  puts "2. Tenant Menu"
  puts "3. Exit the System"
  choice2 = gets.chomp
  puts "start menu choice = " + choice
  return choice2
end

puts "start program"
choice = "0"   
ruby_tenants = []
ruby_apts = []

apartments.each do |apt|
  new_apt = Apartment.new((apt[:id]), (apt[:address]), (apt[:monthly_rent]), (apt[:square_feet]))
  ruby_apts << new_apt

end


tenants.each do |tenant|
  new_tenant = Tenant.new((tenant[:id]), (tenant[:name]), (tenant[:age]), (tenant[:apartment_id]))
  ruby_tenants << new_tenant

end


puts "Welcome to the Bob Pizza Property Management System"
puts
while choice.to_i < 3 do
  puts "main menu while loop. choice = " + choice
  if choice == "0"
    choice = start_menu(choice)
    puts "if statement zero choice choice = " + choice
  elsif choice == "1"
    apt_options(choice, ruby_apts, ruby_tenants)
    puts "if statement choice 1 choice = " + choice
  elsif choice == "2"
    tenant_options(choice, ruby_apts, ruby_tenants)
    puts "if statement choice 2 choice = " + choice
  end
  # case choice
  # # when "0"
  # #   start_menu(choice)
  # #   puts "case statement zero choice = " + choice
  # when "1"
  #   puts "case statement one choice = " + choice
  #   apt_options(choice)
  # # # when "2"
  # # #   tenant_options(choice)
  # # #   ruby_tenants.each do |tenant|
  # # #   puts tenant.name
  # # end
  # when "3"
  #   puts "Goodbye"
  #   exit 
  # else
  #   puts "Please enter either 1, 2, or 3"
  # end

end




puts "end program"





