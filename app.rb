require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"


class Menu
  def initialize(apartments, tenants)
    @apartments = apartments
    @tenants = tenants
    # ruby_apartments = []
    # ruby_tenants = []
  end


  def display
    puts "Select an option"
    puts "1 - View All Apartments"
    puts "2 - View All Tenants"
    puts "3 - View All Apartments with their tenants"
    puts "4 - Enter a name and view apartment"
    puts "5 - Remove a tenant"
    puts "6 - Add a tenant"
    puts "7 - Add an apartment"
    puts "8 - Assing tenant to apartment"
    input = gets.chomp
    self.convert
    self.cases(input)
  end

  def convert
    @apartments = @apartments.map do |apartment|
      Apartment.new(apartment[:id],apartment[:address],apartment[:monthly_rent],apartment[:square_feet])
    end

    @tenants = @tenants.map do |tenant|
      Tenant.new(tenant[:id],tenant[:name], tenant[:age], tenant[:apartment_id])
    end

  end

  def cases(input)
    case input
    when "1"
      self.loop_apartments
    when "2"
      self.loop_tenants
    when "3"
      self.apartments_with_tenants
    when "4"
      self.enter_a_name
    when "5"
      self.remove_tenant
    when "6"
      self.add_tenant
    when "7"
      self.add_apartment
    when "8"
      self.assign_tenant
    end

  end

  def loop_apartments
    for apartment in @apartments do
      puts apartment.inspect
    end

  end

  def loop_tenants
    for tenant in @tenants do
      puts tenant.inspect
    end
  end

  def apartments_with_tenants
    for apartment in @apartments do
      puts "Apartment:"
      puts apartment.address
      puts "Tenants: "
      for tenant in @tenants do
        if tenant.apartment_id == apartment.id
          puts tenant.name + " "
        end
      end
      puts " "
    end

  end

  def enter_a_name
    puts "Enter a name:"
    name = gets.chomp
    for tenant in @tenants do
      if name == tenant.name
        for apartment in @apartments do
          if tenant.apartment_id == apartment.id
            puts apartment.address
          end
        end
      end
    end
  end

  def remove_tenant
    puts "Enter a name to remove tenant: "
    name = gets.chomp
    @tenants.each_with_index do |tenant,i|
      if tenant.name == name
        @tenants.delete_at(i)
      end
    end
    puts "#{name} has been removed."
    #self.apartments_with_tenants
  end

  def add_tenant
    puts "Enter an id: "
    id = gets.chomp
    puts "Enter a name:"
    name = gets.chomp
    puts "Enter an age"
    age = gets.chomp
    puts "Enter an apartment id"
    apartment_id = gets.chomp
    @tenants.push(Tenant.new(id, name, age, apartment_id))
  end

  def add_apartment
    puts "Enter an id: "
    id = gets.chomp
    puts "Enter an address:"
    address = gets.chomp
    puts "Enter a monthly rent"
    monthly_rent = gets.chomp
    puts "Enter a square footage"
    square_feet = gets.chomp
    @apartments.push(Apartment.new(id, address, monthly_rent, square_feet))
  end

  def assign_tenant
    puts "Enter a name:"
    name = gets.chomp
    puts "Enter an apartment id"
    apartment_id = gets.chomp
    for tenant in @tenants do
      if tenant.name == name
        tenant.apartment_id = apartment_id.to_i
      end
    end
    self.apartments_with_tenants
  end

end

menu = Menu.new(data[:apartments],data[:tenants])
menu.display


# for apartment in apartments do
#   puts apartment[:address]
# end
#
# for tenant in tenants do
#   puts tenant[:name]
# end
#
# less_than_700 = apartments.select { |apartment|
#   apartment[:monthly_rent] < 700
#  }
#  puts less_than_700
#
# puts "Tenants over 44"
#  for tenant in tenants do
#    if tenant[:age] > 44
#      puts tenant
#    end
#  end
#
# puts "Tenants with apartment_id of 1"
#  for tenant in tenants do
#    if tenant[:apartment_id] == 1
#      puts tenant
#    end
#  end
#
# puts "Tenants sorted by age"
#  tenants.sort_by! { |tenant|
#    tenant[:age]
#    }
#  puts tenants
#
#  puts "Tenants alphabetically"
#  tenants.sort_by! do |tenant|
#    tenant[:name]
#  end
#  puts tenants
#
#  for tenant in tenants do
#    tenant[:apartment_id]
#  end

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

#Part 2
