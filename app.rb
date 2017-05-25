require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
$apartments = data[:apartments]
$tenants = data[:tenants
ruby_apartments = []
ruby_tenants = []

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
# The data is structred as hashes inside and array.
# Apartments and tenants each include four symbols in their key value pairs.

# Use enumerables to -
  # Print all the addresses for the apartments
  # apartments.each do |apartment|
  #   puts "#{apartment[:address]}"
  # end

  # Print all the names for tenants
  # tenants.each do |names|
  #   puts "#{names[:name]}"
  # end

  # Print only apartments that are less then 700 in rent
# apartments.each do |rent|
#   if rent[:monthly_rent] < 700
#     puts "#{rent[:monthly_rent]}"
#   end
# end

  # Print only tenants that are over the age of 44
# tenants.each do |old|
#   if old[:age] > 44
#     puts "#{old[:age]}"
#   end
# end

  # Print only tenants that have an apartment id of 1
# tenants.each do |idOne|
#   if idOne[:apartment_id] == 1
#     puts "#{idOne[:apartment_id]}"
#   end
# end

  # Print all the tenants in order from youngest to oldest
# age_range = tenants.sort_by do |range|
#   range[:age]
# end
# puts age_range

#   # Print the names of all the tenants alphabetically
# alphabetically = tenants.sort_by do |names|
#   names[:name]
#   # puts "#{names[:name]}"
# end
# puts alphabetically

  # ## More challenging
  # # When printing tenants also print out the address that the tenant resides in.
# tenants.each do |apartment_id|
#   apartments.each do |id|
#     if "#{apartment_id[:apartment_id]}" == "#{id[:id]}"
#       puts "#{apartment_id[:name]}, #{id[:address]}"
#     end
#   end
# end

  # When printing all apartments, under each apartment print all of its tenants

# apartments.each do |a_item|
#   puts "#{a_item[:id]}, #{a_item[:address]}, #{a_item[:monthly_rent]}, #{a_item[:square_feet]}"
#   tenants.each do |t_item|
#     if "#{t_item[:apartment_id]}" == "#{a_item[:id]}"
#       puts "#{t_item[:name]}"
#     end
#   end
# end




# class Apartments
#   def self.show_apartments
#     $apartments.each do |a_item|
#       puts "#{a_item[:id]}, #{a_item[:address]}, #{a_item[:monthly_rent]}, #{a_item[:square_feet]}"
#     end
#   end
#
#   def self.show_app_ten
#     $apartments.each do |a_item|
#       puts "#{a_item[:id]}, #{a_item[:address]}, #{a_item[:monthly_rent]}, #{a_item[:square_feet]}"
#       $tenants.each do |t_item|
#         if "#{t_item[:apartment_id]}" == "#{a_item[:id]}"
#           puts "#{t_item[:name]}"
#         end
#       end
#     end
#   end
# end
#
# class Tenants
#   def self.show_tenants
#     $tenants.each do |t_item|
#       puts "#{t_item[:id]}, #{t_item[:name]}, #{t_item[:age]}, #{t_item[:apartment_id]}"
#     end
#   end
# end

class Menu
  def self.display
    while 1
      puts ""
      puts "Welcome, Bob Pizza."
      puts ""
      puts "MENU"
      puts "Choose one of the following:"
      puts "1 - View all Apartments"
      puts "2 - View all Tenants"
      puts "3 - All apartments with their tenants"
      puts "4 - Exit"
      input = gets.chomp
      if ["1","2","3","4"].include? input
        self.select (input)
        # break
      else
        puts "Invalid option."
      end
    end
  end
  def self.select(number)
      case number
      when "1"
        Apartments.show_apartments
      when "2"
        Tenants.show_tenants
      when "3"
        Apartments.show_app_ten
      when "4"
        puts "Ciao"
        exit(true)
    end
  end
end

Menu.display
