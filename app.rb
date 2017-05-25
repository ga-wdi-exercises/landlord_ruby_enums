require "pry"

require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"

apartments = data[:apartments]
tenants = data[:tenants]

require_relative "models/apartment"
require_relative "models/tenant"

#
# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
#   Explain how the data is structured
#   What are the properties for each of the two types of hashes
#
# Use enumerables to -
#   #Print all the addresses for the apartments
# apartments.each do |apartments|
#     puts "#{apartments[:address]}"
#   end
#
#   # Print all the names for tenants
#   tenants.each do |names|
#     puts "#{names[:name]}"
#   end
#   #Print only apartments that are less then 700 in rent
#   apartments.each do |rents|
#     if rents[:monthly_rent] < 700
#       puts "#{rents[:monthly_rent]}"
#     else
#     end
#   end
# #  Print only tenants that are over the age of 44
#
# tenants.each do |ages|
#   if ages[:age] > 40
#     puts "#{ages[:age]}"
#   else
#   end
# end
#
# #Print only tenants that have an apartment id of 1
# tenants.each do |aptid|
#   if aptid[:id] == 1
#     puts "#{aptid[:name]}"
#   else
#   end
# end
#   # Print all the tenants in order from youngest to oldest
#
#  ascending_ages = tenants.sort_by do |ages|
#   ages.age
#  end
#   puts ascending_ages
#
# #   # Print the names of all the tenants alphabetically
# aplhabet = tenants.sort_by do |alpha|
#   alpha[:name]
#  end
# puts alphabet

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
        #nest the each
  # When printing all apartments, under each apartment print all of its tenants

# require "pry"
#
#   class Data
#     attr_accessor :apartments, :tenants
#
#   def initialize (apartments, tenants)
#     @apartments = apartments
#     @tenants = tenants
#   end
#
# end

  while 1
      puts "Choose one of the following:"
      puts "1 - See All Apartments"
      puts "2 - See All Tenants"
      puts "E - Exit Program"
        input = gets.chomp
        if ["1","2","E"].include? input
           input
        break
        else
          puts "Invalid option."
        end
      end
        if input == "1"
          apartments.each do |apartment|
            puts "#{apartment[:address]}"
         end
        elsif input == "2"
          tenants.each do |tenant|
            puts "#{tenant[:name]}"
          end
        else input == "E"
          puts "Goodbye"
          exit(true)
          end

binding.pry
